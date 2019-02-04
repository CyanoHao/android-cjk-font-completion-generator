import sys
import json

from fontlib.transform import Transform
from fontlib.pkana import ProportionalizeKana
from fontlib.unicode import IncludedInGB2312, IncludedIn通规, IncludedInFounder9642, IncludedInHanyi9169

ratio = 0.88

def Merge(base, italic, condensed, condensedItalic, ext):
	baseUpm = base['head']['unitsPerEm']
	base['glyf'].update(italic['glyf'])
	base['glyph_order'].extend(italic['glyph_order'])
	base['glyf'].update(condensed['glyf'])
	base['glyph_order'].extend(condensed['glyph_order'])
	base['glyf'].update(condensedItalic['glyf'])
	base['glyph_order'].extend(condensedItalic['glyph_order'])

	cjkItalicOrder = []
	cjkCondensedOrder = []
	cjkCondensedItalicOrder = []
	for (u, n) in ext['cmap'].items():
		if (u not in base['cmap'].keys()) and (IncludedInGB2312(int(u)) or IncludedIn通规(int(u)) or IncludedInFounder9642(int(u)) or IncludedInHanyi9169(int(u))):
			base['cmap'][u] = n
			italic['cmap'][u] = 'italic-' + n
			condensed['cmap'][u] = 'condensed-' + n
			condensedItalic['cmap'][u] = 'condensedItalic-' + n
			if n not in base['glyf'].keys():
				glyph = ext['glyf'][n]
				base['glyf'][n] = glyph
				base['glyf']['italic-' + n] = {
					'advanceWidth': glyph['advanceWidth'],
					'references': [
						{ 'glyph': n, 'x': -50 / 1000 * baseUpm, 'y': 0, 'a': 1, 'b': 0, 'c': slope, 'd': 1, 'roundToGrid': True, 'useMyMetrics': True }
					]
				}
				base['glyf']['condensed-' + n] = {
					'advanceWidth': glyph['advanceWidth'] * ratio,
					'references': [
						{ 'glyph': n, 'x': 0, 'y': 0, 'a': ratio, 'b': 0, 'c': 0, 'd': 1, 'roundToGrid': True }
					]
				}
				base['glyf']['condensedItalic-' + n] = {
					'advanceWidth': glyph['advanceWidth'] * ratio,
					'references': [
						{ 'glyph': n, 'x': -50 / 1000 * baseUpm, 'y': 0, 'a': ratio, 'b': 0, 'c': slope, 'd': 1, 'roundToGrid': True }
					]
				}
				base['glyph_order'].append(n)
				cjkItalicOrder.append('italic-' + n)
				cjkCondensedOrder.append('condensed-' + n)
				cjkCondensedItalicOrder.append('condensedItalic-' + n)

	base['glyph_order'].extend(cjkItalicOrder)
	base['glyph_order'].extend(cjkCondensedOrder)
	base['glyph_order'].extend(cjkCondensedItalicOrder)
	italic['glyf'] = base['glyf']
	italic['glyph_order'] = base['glyph_order']
	condensed['glyf'] = base['glyf']
	condensed['glyph_order'] = base['glyph_order']
	condensedItalic['glyf'] = base['glyf']
	condensedItalic['glyph_order'] = base['glyph_order']

latinFilename = sys.argv[1]
asianFilename = sys.argv[2]
italicFilename = sys.argv[3]
condensedFilename = sys.argv[4]
condensedItalicFilename = sys.argv[5]
slope = float(sys.argv[6])

with open(latinFilename) as latinFile:
	latinFont = json.load(latinFile)

with open(italicFilename) as italicFile:
	italicFont = json.load(italicFile)

with open(condensedFilename) as condensedFile:
	condensedFont = json.load(condensedFile)

with open(condensedItalicFilename) as condensedItalicFile:
	condensedItalicFont = json.load(condensedItalicFile)

with open(asianFilename, 'rb') as asianFile:
	asianFont = json.loads(asianFile.read().decode('UTF-8', errors = 'replace'))

ProportionalizeKana(asianFont)

latinUpm = latinFont['head']['unitsPerEm']
asianUpm = asianFont['head']['unitsPerEm']

if (latinUpm != asianUpm):
	for (_, glyph) in asianFont['glyf'].items():
		Transform(glyph, latinUpm / asianUpm, 0, 0, latinUpm / asianUpm, 0, 0)

Merge(latinFont, italicFont, condensedFont, condensedItalicFont, asianFont)

latinOutStr = json.dumps(latinFont, ensure_ascii=False)
with open(latinFilename, 'w') as latinOutFile:
	latinOutFile.write(latinOutStr)

italicOutStr = json.dumps(italicFont, ensure_ascii=False)
with open(italicFilename, 'w') as italicOutFile:
	italicOutFile.write(italicOutStr)

condensedOutStr = json.dumps(condensedFont, ensure_ascii=False)
with open(condensedFilename, 'w') as condensedOutFile:
	condensedOutFile.write(condensedOutStr)

condensedItalicOutStr = json.dumps(condensedItalicFont, ensure_ascii=False)
with open(condensedItalicFilename, 'w') as condensedItalicOutFile:
	condensedItalicOutFile.write(condensedItalicOutStr)
