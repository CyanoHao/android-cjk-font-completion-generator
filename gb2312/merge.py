import sys
import json

from fontlib.transform import Transform
from fontlib.pkana import ProportionalizeKana
from fontlib.unicode import IncludedInGB2312, IncludedIn通规, IncludedInFounder9642, IncludedInHanyi9169

def Merge(base, italic, ext):
	baseUpm = base['head']['unitsPerEm']
	base['glyf'].update(italic['glyf'])
	base['glyph_order'].extend(italic['glyph_order'])

	cjkItalicOrder = []
	for (u, n) in ext['cmap'].items():
		if (u not in base['cmap'].keys()) and (IncludedInGB2312(int(u)) or IncludedIn通规(int(u)) or IncludedInFounder9642(int(u)) or IncludedInHanyi9169(int(u))):
			base['cmap'][u] = n
			italic['cmap'][u] = 'italic-' + n
			if n not in base['glyf'].keys():
				glyph = ext['glyf'][n]
				base['glyf'][n] = glyph
				base['glyf']['italic-' + n] = {
					'advanceWidth': glyph['advanceWidth'],
					'references': [
						{ 'glyph': n, 'x': -50 / 1000 * baseUpm, 'y': 0, 'a': 1, 'b': 0, 'c': slope, 'd': 1, 'roundToGrid': True, 'useMyMetrics': True }
					]
				}
				base['glyph_order'].append(n)
				cjkItalicOrder.append('italic-' + n)

	base['glyph_order'].extend(cjkItalicOrder)
	italic['glyf'] = base['glyf']
	italic['glyph_order'] = base['glyph_order']

latinFilename = sys.argv[1]
asianFilename = sys.argv[2]
italicFilename = sys.argv[3]
slope = float(sys.argv[4])

with open(latinFilename) as latinFile:
	latinFont = json.load(latinFile)

with open(italicFilename) as italicFile:
	italicFont = json.load(italicFile)

with open(asianFilename, 'rb') as asianFile:
	asianFont = json.loads(asianFile.read().decode('UTF-8', errors = 'replace'))

ProportionalizeKana(asianFont)

latinUpm = latinFont['head']['unitsPerEm']
asianUpm = asianFont['head']['unitsPerEm']

if (latinUpm != asianUpm):
	for (_, glyph) in asianFont['glyf'].items():
		Transform(glyph, latinUpm / asianUpm, 0, 0, latinUpm / asianUpm, 0, 0)

Merge(latinFont, italicFont, asianFont)

latinOutStr = json.dumps(latinFont, ensure_ascii=False)
with open(latinFilename, 'w') as latinOutFile:
	latinOutFile.write(latinOutStr)

italicOutStr = json.dumps(italicFont, ensure_ascii=False)
with open(italicFilename, 'w') as italicOutFile:
	italicOutFile.write(italicOutStr)
