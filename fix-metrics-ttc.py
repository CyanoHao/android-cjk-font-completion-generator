import sys
from fontTools.ttLib import TTFont, TTCollection

import common

if __name__ == "__main__":
	param = common.ParamFromArgument(sys.argv[1])

	ttc = TTCollection(param['font'], recalcBBoxes = False)
	font = ttc[0]
	del font['vhea']
	del font['vmtx']
	font_head = font['head']

	ref = TTFont(param['reference'])
	ref_head = ref['head']
	scale = font_head.unitsPerEm / ref_head.unitsPerEm

	font_head.yMin = round(ref_head.yMin * scale)
	font_head.yMax = round(ref_head.yMax * scale)

	ttc.save(param['out'])
