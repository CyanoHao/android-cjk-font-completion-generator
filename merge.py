import sys
import copy
import json
import codecs
import subprocess

from libotd.merge import MergeBelow, MergeAbove
from libotd.pkana import ProportionalizeKana
from libotd.gc import RemoveFeature, SubsetLayoutLanguage, Gc
from libotd.rebase import Rebase
from libotd.condense import Condense
from libotd.transform import Transform

import common
from configure import config

def GetNameString(font, nameID):
	for entry in font['name']:
		if entry['nameID'] == nameID and entry['languageID'] == 1033 and entry['platformID'] == 3 and entry['encodingID'] == 1:
			return ' ' + entry['nameString']
	return ''

def FixNameTable(latin, cjk):
	cjkCopyright = GetNameString(cjk, 0)
	for entry in latin['name']:
		if entry['nameID'] == 0:
			entry['nameString'] += cjkCopyright
		elif entry['nameID'] == 13:
			entry['nameString'] = config.license
		elif entry['nameID'] == 14:
			entry['nameString'] = config.licenseUrl

def AdditionalCcmp(font):
	cmap_ = font['cmap']
	u2014 = cmap_[str(0x2014)] # EM DASH
	u2015 = cmap_[str(0x2015)] # HORIZONTAL BAR
	u2E3A = cmap_[str(0x2E3A)] # TWO-EM DASH
	u2E3B = cmap_[str(0x2E3B)] # THREE-EM DASH

	gsub_ = font['GSUB']
	gsub_['lookups']['lookup_ccmp_1000'] = {
		'type': 'gsub_ligature',
		'flags': {},
		'subtables': [
			{
				'substitutions': [
					{ 'from': [ u2014, u2014, u2014 ], 'to': u2E3B },
					{ 'from': [ u2014, u2014 ], 'to': u2E3A },
					{ 'from': [ u2015, u2015, u2015 ], 'to': u2E3B },
					{ 'from': [ u2015, u2015 ], 'to': u2E3A },
				]
			}
		]
	}
	for f in gsub_['features']:
		if f[0:4] != 'ccmp':
			continue
		gsub_['features'][f].append('lookup_ccmp_1000')
	gsub_['lookupOrder'].append('lookup_ccmp_1000')

def DummyVmtx(font):
	font['vhea'] = {
		"version": 1.0625,
		"ascent": 500,
		"descent": -500,
		"lineGap": 0,
		"advanceHeightMax": 3000,
		"minTop": -202,
		"minBottom": -677,
		"yMaxExtent": 2928,
		"caretSlopeRise": 0,
		"caretSlopeRun": 1,
		"caretOffset": 0,
	}
	for _, g in font['glyf'].items():
		g['advanceHeight'] = 1000
		g['verticalOrigin'] = 880

def ReadFont(filename, prefix):
	process = subprocess.Popen(
		[ 'otfccdump', '--ignore-hints', '--ugly', '--no-bom', '--quiet', '--glyph-name-prefix', prefix, filename ],
		stdout = subprocess.PIPE
	)
	return json.loads(process.communicate()[0].decode('utf-8', errors = 'replace'))

def WriteFont(font, filename):
	process = subprocess.Popen(
		[ 'otfccbuild', '--quiet', '--short-post', '--keep-average-char-width', '-O3', '-o', filename ],
		stdin = subprocess.PIPE
	)
	process.communicate(json.dumps(font, ensure_ascii = False, separators=(',',':')).encode())

if __name__ == '__main__':
	param = common.ParamFromArgument(sys.argv[1])

	latin = ReadFont(param['latin'], 'latn')
	cjk = ReadFont(param['cjk'], 'hani')

	if (latin['head']['unitsPerEm'] != 1000):
		Rebase(latin, 1000 / latin['head']['unitsPerEm'], roundToInt = True)

	# add dummy vertical metrics, which is requierd in `ttcize` phase
	# will be removed in `fix-metrics` phase
	DummyVmtx(latin)

	AdditionalCcmp(latin)
	ProportionalizeKana(cjk)
	if param['italize'] != 0:
		for _, g in cjk['glyf'].items():
			Transform(g, 1, param['italize'], 0, 1, -50, 0, roundToInt = True)
	if param['condense'] != 1:
		Condense(cjk, param['condense'], roundToInt = True)

	SubsetLayoutLanguage(cjk['GSUB'], [ common.languageTag[l] for l in config.keepLanguage ] + [ 'DFLT' ])
	SubsetLayoutLanguage(cjk['GPOS'], [ common.languageTag[l] for l in config.keepLanguage ] + [ 'DFLT' ])
	RemoveFeature(cjk['GSUB'], [ 'pwid', 'fwid', 'hwid', 'twid', 'qwid', 'vert', 'vrt2', 'dlig', 'aalt' ])
	RemoveFeature(cjk['GPOS'], [ 'palt', 'halt', 'vert', 'vpal', 'vhal', 'vkrn' ])
	if config.defaultLanguage != 'k' and 'k' not in config.keepLanguage:
		RemoveFeature(cjk['GSUB'], [ 'ljmo', 'vjmo', 'tjmo' ])
	Gc(cjk)

	MergeBelow(latin, cjk)
	assert len(latin['glyf']) <= 65535

	WriteFont(latin, param['out'])
