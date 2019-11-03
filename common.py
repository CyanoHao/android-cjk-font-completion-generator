import json
import base64

languageTag = {
	"sc": "ZHS ",
	"tc": "ZHT ",
	"hc": "ZHH ",
	"j": "JAN ",
	"k": "KOR ",
}

languageSourceMap = {
	"sc": {
		"sans": "NotoSansCJKsc",
		"serif": "NotoSerifCJKsc",
		"mono": "NotoSansMonoCJKsc",
		"sourcesans": "SourceHanSansSC",
		"sourceserif": "SourceHanSerifSC",
	},
	"tc": {
		"sans": "NotoSansCJKtc",
		"serif": "NotoSerifCJKtc",
		"mono": "NotoSansMonoCJKtc",
		"sourcesans": "SourceHanSansTC",
		"sourceserif": "SourceHanSerifTC",
	},
	"hc": {
		"sans": "NotoSansCJKhk",
		"serif": "NotoSerifCJKtc",
		"mono": "NotoSansMonoCJKhk",
		"sourcesans": "SourceHanSansHC",
		"sourceserif": "SourceHanSerifTC",
	},
	"j": {
		"sans": "NotoSansCJKjp",
		"serif": "NotoSerifCJKjp",
		"mono": "NotoSansMonoCJKjp",
		"sourcesans": "SourceHanSans",
		"sourceserif": "SourceHanSerif",
	},
	"k": {
		"sans": "NotoSansCJKkr",
		"serif": "NotoSerifCJKkr",
		"mono": "NotoSansMonoCJKkr",
		"sourcesans": "SourceHanSansK",
		"sourceserif": "SourceHanSerifK",
	},
}

def ParamToArgument(param):
	js = json.dumps(param, separators=(',',':'))
	b64 = base64.b64encode(js.encode())
	return b64.decode()

def ParamFromArgument(arg):
	js = base64.b64decode(arg).decode()
	return json.loads(js)
