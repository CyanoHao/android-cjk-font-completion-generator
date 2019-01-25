import sys
import json

from fontlib.transform import Transform
from fontlib.pkana import ProportionalizeKana
from fontlib.merge import MergeBelow

if len(sys.argv) != 3:
	print("usage: " + sys.argv[0] + " latin.otd asian.otd")
	exit(1)

latinFilename = sys.argv[1]
asianFilename = sys.argv[2]

with open(latinFilename) as latinFile:
	latinFont = json.load(latinFile)

with open(asianFilename, 'rb') as asianFile:
	asianFont = json.loads(asianFile.read().decode('UTF-8', errors = 'replace'))

ProportionalizeKana(asianFont)

latinUpm = latinFont['head']['unitsPerEm']
asianUpm = asianFont['head']['unitsPerEm']

if (latinUpm != asianUpm):
	for (_, glyph) in asianFont['glyf'].items():
		Transform(glyph, latinUpm / asianUpm, 0, 0, latinUpm / asianUpm, 0, 0)

MergeBelow(latinFont, asianFont)

outStr = json.dumps(latinFont, ensure_ascii=False)
with open(latinFilename, 'w') as outFile:
	outFile.write(outStr)
