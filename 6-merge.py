import sys
import json

if len(sys.argv) != 3:
	print("usage: " + sys.argv[0] + " latin.otd asian.otd")
	exit(1)

latinFilename = sys.argv[1]
asianFilename = sys.argv[2]

with open(latinFilename) as latinFile:
	latinFont = json.load(latinFile)

with open(asianFilename, 'rb') as asianFile:
	asianFont = json.loads(asianFile.read().decode('UTF-8', errors = 'replace'))

for (uniId, glyphName) in asianFont['cmap'].items():
	if uniId not in latinFont['cmap'].keys():
		latinFont['cmap'][uniId] = glyphName
		if glyphName not in latinFont['glyf'].keys():
			latinFont['glyf'][glyphName] = asianFont['glyf'][glyphName]

outStr = json.dumps(latinFont, ensure_ascii=False)
with open(latinFilename, 'w') as outFile:
	outFile.write(outStr)
