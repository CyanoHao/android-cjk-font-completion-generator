import codecs

from pprint import pprint

import common

class Config:
	license = "This Font Software is licensed under the SIL Open Font License, Version 1.1. This Font Software is distributed on an \"AS IS\" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the SIL Open Font License for the specific language, permissions and limitations governing your use of this Font Software."
	licenseUrl = "https://scripts.sil.org/OFL"

	# available values for `defaultLanguage` and `keepLanguage`:
	#   sc — Simplified Chinese
	#   tc — Traditional Chinese (Taiwan)
	#   hc — Traditional Chinese (Hong Kong & Macau)
	#   j  — Japanese
	#   k  — Korean

	# as is named, “default language”
	defaultLanguage = "sc"

	# keep these lanuguages in OpenType Layout tables (`GSUB` and `GPOS`)
	# Android will choose the proper localized form for these languages
	keepLanguage = [ "sc", "tc", "hc", "j" ]

	ttfInstance = {
		"Roboto-Thin": {
			# "latin" is implicit to "Roboto-Thin"
			"cjk": "{}-Thin".format(common.languageSourceMap[defaultLanguage]["sans"]),
			# "italize" is implicit to 0 (tangent value of italic angle)
			# "condense" is implicit to 1
		},
		"Roboto-ThinItalic": {
			"cjk": "{}-Thin".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"Roboto-Light": {
			"cjk": "{}-Light".format(common.languageSourceMap[defaultLanguage]["sans"]),
		},
		"Roboto-LightItalic": {
			"cjk": "{}-Light".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"RobotoCondensed-Light": {
			"cjk": "{}-Light".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"condense": 0.88,
		},
		"RobotoCondensed-LightItalic": {
			"cjk": "{}-Light".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
			"condense": 0.88,
		},
		"Roboto-Regular": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["sans"]),
		},
		"Roboto-Italic": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"RobotoCondensed-Regular": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"condense": 0.88,
		},
		"RobotoCondensed-Italic": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
			"condense": 0.88,
		},
		"Roboto-Medium": {
			"cjk": "{}-Medium".format(common.languageSourceMap[defaultLanguage]["sans"]),
		},
		"Roboto-MediumItalic": {
			"cjk": "{}-Medium".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"RobotoCondensed-Medium": {
			"cjk": "{}-Medium".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"condense": 0.88,
		},
		"RobotoCondensed-MediumItalic": {
			"cjk": "{}-Medium".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
			"condense": 0.88,
		},
		"Roboto-Bold": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["sans"]),
		},
		"Roboto-BoldItalic": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"RobotoCondensed-Bold": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"condense": 0.88,
		},
		"RobotoCondensed-BoldItalic": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
			"condense": 0.88,
		},
		"Roboto-Black": {
			"cjk": "{}-Black".format(common.languageSourceMap[defaultLanguage]["sans"]),
		},
		"Roboto-BlackItalic": {
			"cjk": "{}-Black".format(common.languageSourceMap[defaultLanguage]["sans"]),
			"italize": 0.1733,
		},
		"NotoSerif-Regular": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["serif"]),
		},
		"NotoSerif-Italic": {
			"cjk": "{}-Regular".format(common.languageSourceMap[defaultLanguage]["serif"]),
			"italize": 0.2125,
		},
		"NotoSerif-Bold": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["serif"]),
		},
		"NotoSerif-BoldItalic": {
			"cjk": "{}-Bold".format(common.languageSourceMap[defaultLanguage]["serif"]),
			"italize": 0.2125,
		},
	}

	ttcInstance = {
		"Roboto-Thin": [
			# font 0 is implicit to "Roboto-Thin",
			"{}-Thin".format(common.languageSourceMap["j"]["sans"]),
			"{}-Thin".format(common.languageSourceMap["k"]["sans"]),
			"{}-Thin".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Thin".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Thin".format(common.languageSourceMap["hc"]["sans"]),
			"{}-ExtraLight".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-ExtraLight".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-ExtraLight".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-ExtraLight".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-ExtraLight".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"Roboto-Light": [
			"{}-Light".format(common.languageSourceMap["j"]["sans"]),
			"{}-Light".format(common.languageSourceMap["k"]["sans"]),
			"{}-Light".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Light".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Light".format(common.languageSourceMap["hc"]["sans"]),
			"{}-Light".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-Light".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-Light".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-Light".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-Light".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"Roboto-Regular": [
			"{}-Regular".format(common.languageSourceMap["j"]["sans"]),
			"{}-Regular".format(common.languageSourceMap["k"]["sans"]),
			"{}-Regular".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Regular".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Regular".format(common.languageSourceMap["hc"]["sans"]),
			"{}-Regular".format(common.languageSourceMap["j"]["mono"]),
			"{}-Regular".format(common.languageSourceMap["k"]["mono"]),
			"{}-Regular".format(common.languageSourceMap["sc"]["mono"]),
			"{}-Regular".format(common.languageSourceMap["tc"]["mono"]),
			"{}-Regular".format(common.languageSourceMap["hc"]["mono"]),
			"{}-Regular".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-Regular".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-Regular".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-Regular".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-Regular".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"Roboto-Medium": [
			"{}-Medium".format(common.languageSourceMap["j"]["sans"]),
			"{}-Medium".format(common.languageSourceMap["k"]["sans"]),
			"{}-Medium".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Medium".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Medium".format(common.languageSourceMap["hc"]["sans"]),
			"{}-Medium".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-Medium".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-Medium".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-Medium".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-Medium".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"Roboto-Bold": [
			"{}-Bold".format(common.languageSourceMap["j"]["sans"]),
			"{}-Bold".format(common.languageSourceMap["k"]["sans"]),
			"{}-Bold".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Bold".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Bold".format(common.languageSourceMap["hc"]["sans"]),
			"{}-Bold".format(common.languageSourceMap["j"]["mono"]),
			"{}-Bold".format(common.languageSourceMap["k"]["mono"]),
			"{}-Bold".format(common.languageSourceMap["sc"]["mono"]),
			"{}-Bold".format(common.languageSourceMap["tc"]["mono"]),
			"{}-Bold".format(common.languageSourceMap["hc"]["mono"]),
			"{}-Bold".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-Bold".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-Bold".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-Bold".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-Bold".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"Roboto-Black": [
			"{}-Black".format(common.languageSourceMap["j"]["sans"]),
			"{}-Black".format(common.languageSourceMap["k"]["sans"]),
			"{}-Black".format(common.languageSourceMap["sc"]["sans"]),
			"{}-Black".format(common.languageSourceMap["tc"]["sans"]),
			"{}-Black".format(common.languageSourceMap["hc"]["sans"]),
			"{}-Heavy".format(common.languageSourceMap["j"]["sourcesans"]),
			"{}-Heavy".format(common.languageSourceMap["k"]["sourcesans"]),
			"{}-Heavy".format(common.languageSourceMap["sc"]["sourcesans"]),
			"{}-Heavy".format(common.languageSourceMap["tc"]["sourcesans"]),
			"{}-Heavy".format(common.languageSourceMap["hc"]["sourcesans"]),
		],
		"NotoSerif-Regular": [
			"{}-Regular".format(common.languageSourceMap["j"]["serif"]),
			"{}-Regular".format(common.languageSourceMap["k"]["serif"]),
			"{}-Regular".format(common.languageSourceMap["sc"]["serif"]),
			"{}-Regular".format(common.languageSourceMap["tc"]["serif"]),
			"{}-Regular".format(common.languageSourceMap["j"]["sourceserif"]),
			"{}-Regular".format(common.languageSourceMap["k"]["sourceserif"]),
			"{}-Regular".format(common.languageSourceMap["sc"]["sourceserif"]),
			"{}-Regular".format(common.languageSourceMap["tc"]["sourceserif"]),
		],
		"NotoSerif-Bold": [
			"{}-Bold".format(common.languageSourceMap["j"]["serif"]),
			"{}-Bold".format(common.languageSourceMap["k"]["serif"]),
			"{}-Bold".format(common.languageSourceMap["sc"]["serif"]),
			"{}-Bold".format(common.languageSourceMap["tc"]["serif"]),
			"{}-Bold".format(common.languageSourceMap["j"]["sourceserif"]),
			"{}-Bold".format(common.languageSourceMap["k"]["sourceserif"]),
			"{}-Bold".format(common.languageSourceMap["sc"]["sourceserif"]),
			"{}-Bold".format(common.languageSourceMap["tc"]["sourceserif"]),
		],
	}

config = Config()

if __name__ == "__main__":
	makefile = {
		'variable': {},
		'rule': {
			'.PHONY': {
				'depend': [ 'all', 'ttc', 'ttf' ],
			},
			'all': {
				'depend': [ 'ttc', 'ttf' ],
			},
			'clean': {
				'command': [
					'-rm -rf build/',
				],
			},
			'ttc': {
				'depend': [],
			},
			'ttf': {
				'depend': [],
			},
		},
	}

	c2q = set()

	for instance, detail in config.ttcInstance.items():
		makefile['rule']['ttc']['depend'].append('out/ttc/{}.ttf'.format(instance))
		makefile['rule']['out/ttc/{}.ttf'.format(instance)] = {
			'depend': [ 'build/ttc/{}.ttc'.format(instance), 'src/latin/{}.ttf'.format(instance) ],
			'command': [
				'mkdir -p out/ttc/',
				'python fix-metrics-ttc.py {}'.format(common.ParamToArgument(
					{
						'font': 'build/ttc/{}.ttc'.format(instance),
						'reference': 'src/latin/{}.ttf'.format(instance),
						'out': 'out/ttc/{}.ttf'.format(instance)
					}
				)),
			],
		}
		makefile['rule']['build/ttc/{}.ttc'.format(instance)] = {
			'depend': [ 'build/ttf/{}.ttf'.format(instance) ] + [ 'build/c2q/{}.ttf'.format(entry) for entry in detail ],
			'command': [
				'mkdir -p build/ttc/',
				'node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^',
			],
		}
		c2q.update(detail)

	for instance, detail in config.ttfInstance.items():
		makefile['rule']['ttf']['depend'].append('out/ttf/{}.ttf'.format(instance))
		makefile['rule']['out/ttf/{}.ttf'.format(instance)] = {
			'depend': [ 'build/ttf/{}.ttf'.format(instance), 'src/latin/{}.ttf'.format(instance) ],
			'command': [
				'mkdir -p out/ttf/',
				'python fix-metrics.py {}'.format(common.ParamToArgument(
					{
						'font': 'build/ttf/{}.ttf'.format(instance),
						'reference': 'src/latin/{}.ttf'.format(instance),
						'out': 'out/ttf/{}.ttf'.format(instance)
					}
				)),
			],
		}
		makefile['rule']['build/ttf/{}.ttf'.format(instance)] = {
			'depend': [ 'src/latin/{}.ttf'.format(instance), 'build/c2q/{}.ttf'.format(detail['cjk']) ],
			'command': [
				'mkdir -p build/ttf/',
				'python merge.py {}'.format(common.ParamToArgument(
					{
						'latin': 'src/latin/{}.ttf'.format(instance),
						'cjk': 'build/c2q/{}.ttf'.format(detail['cjk']),
						'out': 'build/ttf/{}.ttf'.format(instance),
						'italize': detail.get('italize', 0),
						'condense': detail.get('condense', 1),
					}
				)),
			],
		}
		c2q.update(detail['cjk'])

	for font in sorted(c2q):
		makefile['rule']['build/c2q/{}.ttf'.format(font)] = {
			'depend': [ 'src/cjk/{}.otf'.format(font) ],
			'command': [ 
				'mkdir -p build/c2q/',
				'otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@',
			],
		}

	# dump `makefile` dict to actual “GNU Makefile”
	makedump = ""

	for var, val in makefile["variable"].items():
		makedump += "{}={}\n".format(var, val)

	for tar, recipe in makefile["rule"].items():
		dep = recipe["depend"] if "depend" in recipe else []
		makedump += "{}: {}\n".format(tar, " ".join(dep))
		com = recipe["command"] if "command" in recipe else []
		for c in com:
			makedump += "\t{}\n".format(c)

	with codecs.open("Makefile", 'w', 'UTF-8') as mf:
		mf.write(makedump)
