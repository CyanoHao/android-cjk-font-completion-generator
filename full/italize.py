import sys
import json

from fontlib.transform import Transform

original = sys.argv[1]
output = sys.argv[2]
slope = float(sys.argv[3])

font = json.load(open(original))

for (_, glyph) in font["glyf"].items():
	Transform(glyph, 1, slope, 0, 1, -50, 0)

open(output, "w").write(json.dumps(font, ensure_ascii=False))
