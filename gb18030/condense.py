import json
import sys

original = sys.argv[1]
output = sys.argv[2]

ratio = 0.88

def CondenseGposMarkToBase(subtable):
	for (_, data) in subtable['marks'].items():
		if 'x' in data:
			data['x'] = round(data['x'] * ratio)
	for (_, data) in subtable['bases'].items():
		for (_, anchor) in data.items():
			if 'x' in anchor:
				anchor['x'] = round(anchor['x'] * ratio)

def CondenseGposSingle(subtable):
	for (_, data) in subtable.items():
		if 'dx' in data:
			data['dx'] = round(data['dx'] * ratio)
		if 'dWidth' in data:
			data['dWidth'] = round(data['dWidth'] * ratio)

def CondenseGposPair(subtable):
	for row in subtable['matrix']:
		for i in range(len(row)):
			if type(row[i]) != dict:
				row[i] = round(row[i] * ratio)

CondenseGpos = {
	'gpos_mark_to_base': CondenseGposMarkToBase,
	'gpos_single': CondenseGposSingle,
	'gpos_pair': CondenseGposPair,
}

font = json.load(open(original))

font["OS_2"]["xAvgCharWidth"] = round(font["OS_2"]["xAvgCharWidth"] * ratio)

for (_, glyph) in font["glyf"].items():
	if (not glyph or ("contours" not in glyph.keys())):
		continue
	glyph["advanceWidth"] = round(glyph["advanceWidth"] * ratio)
	for contour in glyph["contours"]:
		for point in contour:
			point["x"] = round(point["x"] * ratio)

for (_, lookup) in font['GPOS']['lookups'].items():
	type_ = lookup['type']
	for subtable in lookup['subtables']:
		CondenseGpos[type_](subtable)

open(output, "w").write(json.dumps(font, ensure_ascii=False))
