.PHONY: all ttc ttf
all: ttc ttf
clean: 
	-rm -rf build/
ttc: out/ttc/Roboto-Thin.ttf out/ttc/Roboto-Light.ttf out/ttc/Roboto-Regular.ttf out/ttc/Roboto-Medium.ttf out/ttc/Roboto-Bold.ttf out/ttc/Roboto-Black.ttf out/ttc/NotoSerif-Regular.ttf out/ttc/NotoSerif-Bold.ttf
ttf: out/ttf/Roboto-Thin.ttf out/ttf/Roboto-ThinItalic.ttf out/ttf/Roboto-Light.ttf out/ttf/Roboto-LightItalic.ttf out/ttf/RobotoCondensed-Light.ttf out/ttf/RobotoCondensed-LightItalic.ttf out/ttf/Roboto-Regular.ttf out/ttf/Roboto-Italic.ttf out/ttf/RobotoCondensed-Regular.ttf out/ttf/RobotoCondensed-Italic.ttf out/ttf/Roboto-Medium.ttf out/ttf/Roboto-MediumItalic.ttf out/ttf/RobotoCondensed-Medium.ttf out/ttf/RobotoCondensed-MediumItalic.ttf out/ttf/Roboto-Bold.ttf out/ttf/Roboto-BoldItalic.ttf out/ttf/RobotoCondensed-Bold.ttf out/ttf/RobotoCondensed-BoldItalic.ttf out/ttf/Roboto-Black.ttf out/ttf/Roboto-BlackItalic.ttf out/ttf/NotoSerif-Regular.ttf out/ttf/NotoSerif-Italic.ttf out/ttf/NotoSerif-Bold.ttf out/ttf/NotoSerif-BoldItalic.ttf
out/ttc/Roboto-Thin.ttf: build/ttc/Roboto-Thin.ttc src/latin/Roboto-Thin.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1UaGluLnR0YyIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tVGhpbi50dGYiLCJvdXQiOiJvdXQvdHRjL1JvYm90by1UaGluLnR0ZiJ9
build/ttc/Roboto-Thin.ttc: build/ttf/Roboto-Thin.ttf build/c2q/NotoSansCJKjp-Thin.ttf build/c2q/NotoSansCJKkr-Thin.ttf build/c2q/NotoSansCJKsc-Thin.ttf build/c2q/NotoSansCJKtc-Thin.ttf build/c2q/NotoSansCJKhk-Thin.ttf build/c2q/SourceHanSans-ExtraLight.ttf build/c2q/SourceHanSansK-ExtraLight.ttf build/c2q/SourceHanSansSC-ExtraLight.ttf build/c2q/SourceHanSansTC-ExtraLight.ttf build/c2q/SourceHanSansHC-ExtraLight.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/Roboto-Light.ttf: build/ttc/Roboto-Light.ttc src/latin/Roboto-Light.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1MaWdodC50dGMiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUxpZ2h0LnR0ZiIsIm91dCI6Im91dC90dGMvUm9ib3RvLUxpZ2h0LnR0ZiJ9
build/ttc/Roboto-Light.ttc: build/ttf/Roboto-Light.ttf build/c2q/NotoSansCJKjp-Light.ttf build/c2q/NotoSansCJKkr-Light.ttf build/c2q/NotoSansCJKsc-Light.ttf build/c2q/NotoSansCJKtc-Light.ttf build/c2q/NotoSansCJKhk-Light.ttf build/c2q/SourceHanSans-Light.ttf build/c2q/SourceHanSansK-Light.ttf build/c2q/SourceHanSansSC-Light.ttf build/c2q/SourceHanSansTC-Light.ttf build/c2q/SourceHanSansHC-Light.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/Roboto-Regular.ttf: build/ttc/Roboto-Regular.ttc src/latin/Roboto-Regular.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1SZWd1bGFyLnR0YyIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tUmVndWxhci50dGYiLCJvdXQiOiJvdXQvdHRjL1JvYm90by1SZWd1bGFyLnR0ZiJ9
build/ttc/Roboto-Regular.ttc: build/ttf/Roboto-Regular.ttf build/c2q/NotoSansCJKjp-Regular.ttf build/c2q/NotoSansCJKkr-Regular.ttf build/c2q/NotoSansCJKsc-Regular.ttf build/c2q/NotoSansCJKtc-Regular.ttf build/c2q/NotoSansCJKhk-Regular.ttf build/c2q/NotoSansMonoCJKjp-Regular.ttf build/c2q/NotoSansMonoCJKkr-Regular.ttf build/c2q/NotoSansMonoCJKsc-Regular.ttf build/c2q/NotoSansMonoCJKtc-Regular.ttf build/c2q/NotoSansMonoCJKhk-Regular.ttf build/c2q/SourceHanSans-Regular.ttf build/c2q/SourceHanSansK-Regular.ttf build/c2q/SourceHanSansSC-Regular.ttf build/c2q/SourceHanSansTC-Regular.ttf build/c2q/SourceHanSansHC-Regular.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/Roboto-Medium.ttf: build/ttc/Roboto-Medium.ttc src/latin/Roboto-Medium.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1NZWRpdW0udHRjIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90by1NZWRpdW0udHRmIiwib3V0Ijoib3V0L3R0Yy9Sb2JvdG8tTWVkaXVtLnR0ZiJ9
build/ttc/Roboto-Medium.ttc: build/ttf/Roboto-Medium.ttf build/c2q/NotoSansCJKjp-Medium.ttf build/c2q/NotoSansCJKkr-Medium.ttf build/c2q/NotoSansCJKsc-Medium.ttf build/c2q/NotoSansCJKtc-Medium.ttf build/c2q/NotoSansCJKhk-Medium.ttf build/c2q/SourceHanSans-Medium.ttf build/c2q/SourceHanSansK-Medium.ttf build/c2q/SourceHanSansSC-Medium.ttf build/c2q/SourceHanSansTC-Medium.ttf build/c2q/SourceHanSansHC-Medium.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/Roboto-Bold.ttf: build/ttc/Roboto-Bold.ttc src/latin/Roboto-Bold.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1Cb2xkLnR0YyIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tQm9sZC50dGYiLCJvdXQiOiJvdXQvdHRjL1JvYm90by1Cb2xkLnR0ZiJ9
build/ttc/Roboto-Bold.ttc: build/ttf/Roboto-Bold.ttf build/c2q/NotoSansCJKjp-Bold.ttf build/c2q/NotoSansCJKkr-Bold.ttf build/c2q/NotoSansCJKsc-Bold.ttf build/c2q/NotoSansCJKtc-Bold.ttf build/c2q/NotoSansCJKhk-Bold.ttf build/c2q/NotoSansMonoCJKjp-Bold.ttf build/c2q/NotoSansMonoCJKkr-Bold.ttf build/c2q/NotoSansMonoCJKsc-Bold.ttf build/c2q/NotoSansMonoCJKtc-Bold.ttf build/c2q/NotoSansMonoCJKhk-Bold.ttf build/c2q/SourceHanSans-Bold.ttf build/c2q/SourceHanSansK-Bold.ttf build/c2q/SourceHanSansSC-Bold.ttf build/c2q/SourceHanSansTC-Bold.ttf build/c2q/SourceHanSansHC-Bold.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/Roboto-Black.ttf: build/ttc/Roboto-Black.ttc src/latin/Roboto-Black.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL1JvYm90by1CbGFjay50dGMiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUJsYWNrLnR0ZiIsIm91dCI6Im91dC90dGMvUm9ib3RvLUJsYWNrLnR0ZiJ9
build/ttc/Roboto-Black.ttc: build/ttf/Roboto-Black.ttf build/c2q/NotoSansCJKjp-Black.ttf build/c2q/NotoSansCJKkr-Black.ttf build/c2q/NotoSansCJKsc-Black.ttf build/c2q/NotoSansCJKtc-Black.ttf build/c2q/NotoSansCJKhk-Black.ttf build/c2q/SourceHanSans-Heavy.ttf build/c2q/SourceHanSansK-Heavy.ttf build/c2q/SourceHanSansSC-Heavy.ttf build/c2q/SourceHanSansTC-Heavy.ttf build/c2q/SourceHanSansHC-Heavy.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/NotoSerif-Regular.ttf: build/ttc/NotoSerif-Regular.ttc src/latin/NotoSerif-Regular.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL05vdG9TZXJpZi1SZWd1bGFyLnR0YyIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtUmVndWxhci50dGYiLCJvdXQiOiJvdXQvdHRjL05vdG9TZXJpZi1SZWd1bGFyLnR0ZiJ9
build/ttc/NotoSerif-Regular.ttc: build/ttf/NotoSerif-Regular.ttf build/c2q/NotoSerifCJKjp-Regular.ttf build/c2q/NotoSerifCJKkr-Regular.ttf build/c2q/NotoSerifCJKsc-Regular.ttf build/c2q/NotoSerifCJKtc-Regular.ttf build/c2q/SourceHanSerif-Regular.ttf build/c2q/SourceHanSerifK-Regular.ttf build/c2q/SourceHanSerifSC-Regular.ttf build/c2q/SourceHanSerifTC-Regular.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttc/NotoSerif-Bold.ttf: build/ttc/NotoSerif-Bold.ttc src/latin/NotoSerif-Bold.ttf
	mkdir -p out/ttc/
	python fix-metrics-ttc.py eyJmb250IjoiYnVpbGQvdHRjL05vdG9TZXJpZi1Cb2xkLnR0YyIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtQm9sZC50dGYiLCJvdXQiOiJvdXQvdHRjL05vdG9TZXJpZi1Cb2xkLnR0ZiJ9
build/ttc/NotoSerif-Bold.ttc: build/ttf/NotoSerif-Bold.ttf build/c2q/NotoSerifCJKjp-Bold.ttf build/c2q/NotoSerifCJKkr-Bold.ttf build/c2q/NotoSerifCJKsc-Bold.ttf build/c2q/NotoSerifCJKtc-Bold.ttf build/c2q/SourceHanSerif-Bold.ttf build/c2q/SourceHanSerifK-Bold.ttf build/c2q/SourceHanSerifSC-Bold.ttf build/c2q/SourceHanSerifTC-Bold.ttf
	mkdir -p build/ttc/
	node node_modules/otfcc-ttcize/bin/_startup -x -o $@ $^
out/ttf/Roboto-Thin.ttf: build/ttf/Roboto-Thin.ttf src/latin/Roboto-Thin.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1UaGluLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tVGhpbi50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90by1UaGluLnR0ZiJ9
build/ttf/Roboto-Thin.ttf: src/latin/Roboto-Thin.ttf build/c2q/NotoSansCJKsc-Thin.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tVGhpbi50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1UaGluLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG8tVGhpbi50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-ThinItalic.ttf: build/ttf/Roboto-ThinItalic.ttf src/latin/Roboto-ThinItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1UaGluSXRhbGljLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tVGhpbkl0YWxpYy50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90by1UaGluSXRhbGljLnR0ZiJ9
build/ttf/Roboto-ThinItalic.ttf: src/latin/Roboto-ThinItalic.ttf build/c2q/NotoSansCJKsc-Thin.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tVGhpbkl0YWxpYy50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1UaGluLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG8tVGhpbkl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjoxfQ==
out/ttf/Roboto-Light.ttf: build/ttf/Roboto-Light.ttf src/latin/Roboto-Light.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1MaWdodC50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUxpZ2h0LnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvLUxpZ2h0LnR0ZiJ9
build/ttf/Roboto-Light.ttf: src/latin/Roboto-Light.ttf build/c2q/NotoSansCJKsc-Light.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tTGlnaHQudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtTGlnaHQudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90by1MaWdodC50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-LightItalic.ttf: build/ttf/Roboto-LightItalic.ttf src/latin/Roboto-LightItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1MaWdodEl0YWxpYy50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUxpZ2h0SXRhbGljLnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvLUxpZ2h0SXRhbGljLnR0ZiJ9
build/ttf/Roboto-LightItalic.ttf: src/latin/Roboto-LightItalic.ttf build/c2q/NotoSansCJKsc-Light.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tTGlnaHRJdGFsaWMudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtTGlnaHQudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90by1MaWdodEl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjoxfQ==
out/ttf/RobotoCondensed-Light.ttf: build/ttf/RobotoCondensed-Light.ttf src/latin/RobotoCondensed-Light.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1MaWdodC50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvQ29uZGVuc2VkLUxpZ2h0LnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvQ29uZGVuc2VkLUxpZ2h0LnR0ZiJ9
build/ttf/RobotoCondensed-Light.ttf: src/latin/RobotoCondensed-Light.ttf build/c2q/NotoSansCJKsc-Light.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtTGlnaHQudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtTGlnaHQudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1MaWdodC50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MC44OH0=
out/ttf/RobotoCondensed-LightItalic.ttf: build/ttf/RobotoCondensed-LightItalic.ttf src/latin/RobotoCondensed-LightItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1MaWdodEl0YWxpYy50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvQ29uZGVuc2VkLUxpZ2h0SXRhbGljLnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvQ29uZGVuc2VkLUxpZ2h0SXRhbGljLnR0ZiJ9
build/ttf/RobotoCondensed-LightItalic.ttf: src/latin/RobotoCondensed-LightItalic.ttf build/c2q/NotoSansCJKsc-Light.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtTGlnaHRJdGFsaWMudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtTGlnaHQudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1MaWdodEl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjowLjg4fQ==
out/ttf/Roboto-Regular.ttf: build/ttf/Roboto-Regular.ttf src/latin/Roboto-Regular.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1SZWd1bGFyLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tUmVndWxhci50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90by1SZWd1bGFyLnR0ZiJ9
build/ttf/Roboto-Regular.ttf: src/latin/Roboto-Regular.ttf build/c2q/NotoSansCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tUmVndWxhci50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1SZWd1bGFyLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG8tUmVndWxhci50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-Italic.ttf: build/ttf/Roboto-Italic.ttf src/latin/Roboto-Italic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1JdGFsaWMudHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90by1JdGFsaWMudHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG8tSXRhbGljLnR0ZiJ9
build/ttf/Roboto-Italic.ttf: src/latin/Roboto-Italic.ttf build/c2q/NotoSansCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tSXRhbGljLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLVJlZ3VsYXIudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90by1JdGFsaWMudHRmIiwiaXRhbGl6ZSI6MC4xNzMzLCJjb25kZW5zZSI6MX0=
out/ttf/RobotoCondensed-Regular.ttf: build/ttf/RobotoCondensed-Regular.ttf src/latin/RobotoCondensed-Regular.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1SZWd1bGFyLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtUmVndWxhci50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90b0NvbmRlbnNlZC1SZWd1bGFyLnR0ZiJ9
build/ttf/RobotoCondensed-Regular.ttf: src/latin/RobotoCondensed-Regular.ttf build/c2q/NotoSansCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtUmVndWxhci50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1SZWd1bGFyLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG9Db25kZW5zZWQtUmVndWxhci50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MC44OH0=
out/ttf/RobotoCondensed-Italic.ttf: build/ttf/RobotoCondensed-Italic.ttf src/latin/RobotoCondensed-Italic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1JdGFsaWMudHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90b0NvbmRlbnNlZC1JdGFsaWMudHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG9Db25kZW5zZWQtSXRhbGljLnR0ZiJ9
build/ttf/RobotoCondensed-Italic.ttf: src/latin/RobotoCondensed-Italic.ttf build/c2q/NotoSansCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtSXRhbGljLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLVJlZ3VsYXIudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1JdGFsaWMudHRmIiwiaXRhbGl6ZSI6MC4xNzMzLCJjb25kZW5zZSI6MC44OH0=
out/ttf/Roboto-Medium.ttf: build/ttf/Roboto-Medium.ttf src/latin/Roboto-Medium.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1NZWRpdW0udHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90by1NZWRpdW0udHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG8tTWVkaXVtLnR0ZiJ9
build/ttf/Roboto-Medium.ttf: src/latin/Roboto-Medium.ttf build/c2q/NotoSansCJKsc-Medium.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tTWVkaXVtLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLU1lZGl1bS50dGYiLCJvdXQiOiJidWlsZC90dGYvUm9ib3RvLU1lZGl1bS50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-MediumItalic.ttf: build/ttf/Roboto-MediumItalic.ttf src/latin/Roboto-MediumItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1NZWRpdW1JdGFsaWMudHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90by1NZWRpdW1JdGFsaWMudHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG8tTWVkaXVtSXRhbGljLnR0ZiJ9
build/ttf/Roboto-MediumItalic.ttf: src/latin/Roboto-MediumItalic.ttf build/c2q/NotoSansCJKsc-Medium.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tTWVkaXVtSXRhbGljLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLU1lZGl1bS50dGYiLCJvdXQiOiJidWlsZC90dGYvUm9ib3RvLU1lZGl1bUl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjoxfQ==
out/ttf/RobotoCondensed-Medium.ttf: build/ttf/RobotoCondensed-Medium.ttf src/latin/RobotoCondensed-Medium.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1NZWRpdW0udHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90b0NvbmRlbnNlZC1NZWRpdW0udHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG9Db25kZW5zZWQtTWVkaXVtLnR0ZiJ9
build/ttf/RobotoCondensed-Medium.ttf: src/latin/RobotoCondensed-Medium.ttf build/c2q/NotoSansCJKsc-Medium.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtTWVkaXVtLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLU1lZGl1bS50dGYiLCJvdXQiOiJidWlsZC90dGYvUm9ib3RvQ29uZGVuc2VkLU1lZGl1bS50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MC44OH0=
out/ttf/RobotoCondensed-MediumItalic.ttf: build/ttf/RobotoCondensed-MediumItalic.ttf src/latin/RobotoCondensed-MediumItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1NZWRpdW1JdGFsaWMudHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL1JvYm90b0NvbmRlbnNlZC1NZWRpdW1JdGFsaWMudHRmIiwib3V0Ijoib3V0L3R0Zi9Sb2JvdG9Db25kZW5zZWQtTWVkaXVtSXRhbGljLnR0ZiJ9
build/ttf/RobotoCondensed-MediumItalic.ttf: src/latin/RobotoCondensed-MediumItalic.ttf build/c2q/NotoSansCJKsc-Medium.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtTWVkaXVtSXRhbGljLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2Fuc0NKS3NjLU1lZGl1bS50dGYiLCJvdXQiOiJidWlsZC90dGYvUm9ib3RvQ29uZGVuc2VkLU1lZGl1bUl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjowLjg4fQ==
out/ttf/Roboto-Bold.ttf: build/ttf/Roboto-Bold.ttf src/latin/Roboto-Bold.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1Cb2xkLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tQm9sZC50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90by1Cb2xkLnR0ZiJ9
build/ttf/Roboto-Bold.ttf: src/latin/Roboto-Bold.ttf build/c2q/NotoSansCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tQm9sZC50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1Cb2xkLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG8tQm9sZC50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-BoldItalic.ttf: build/ttf/Roboto-BoldItalic.ttf src/latin/Roboto-BoldItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1Cb2xkSXRhbGljLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG8tQm9sZEl0YWxpYy50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90by1Cb2xkSXRhbGljLnR0ZiJ9
build/ttf/Roboto-BoldItalic.ttf: src/latin/Roboto-BoldItalic.ttf build/c2q/NotoSansCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tQm9sZEl0YWxpYy50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1Cb2xkLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG8tQm9sZEl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjoxfQ==
out/ttf/RobotoCondensed-Bold.ttf: build/ttf/RobotoCondensed-Bold.ttf src/latin/RobotoCondensed-Bold.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1Cb2xkLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtQm9sZC50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90b0NvbmRlbnNlZC1Cb2xkLnR0ZiJ9
build/ttf/RobotoCondensed-Bold.ttf: src/latin/RobotoCondensed-Bold.ttf build/c2q/NotoSansCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtQm9sZC50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1Cb2xkLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG9Db25kZW5zZWQtQm9sZC50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MC44OH0=
out/ttf/RobotoCondensed-BoldItalic.ttf: build/ttf/RobotoCondensed-BoldItalic.ttf src/latin/RobotoCondensed-BoldItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90b0NvbmRlbnNlZC1Cb2xkSXRhbGljLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtQm9sZEl0YWxpYy50dGYiLCJvdXQiOiJvdXQvdHRmL1JvYm90b0NvbmRlbnNlZC1Cb2xkSXRhbGljLnR0ZiJ9
build/ttf/RobotoCondensed-BoldItalic.ttf: src/latin/RobotoCondensed-BoldItalic.ttf build/c2q/NotoSansCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG9Db25kZW5zZWQtQm9sZEl0YWxpYy50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NhbnNDSktzYy1Cb2xkLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Sb2JvdG9Db25kZW5zZWQtQm9sZEl0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjowLjg4fQ==
out/ttf/Roboto-Black.ttf: build/ttf/Roboto-Black.ttf src/latin/Roboto-Black.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1CbGFjay50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUJsYWNrLnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvLUJsYWNrLnR0ZiJ9
build/ttf/Roboto-Black.ttf: src/latin/Roboto-Black.ttf build/c2q/NotoSansCJKsc-Black.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tQmxhY2sudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtQmxhY2sudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90by1CbGFjay50dGYiLCJpdGFsaXplIjowLCJjb25kZW5zZSI6MX0=
out/ttf/Roboto-BlackItalic.ttf: build/ttf/Roboto-BlackItalic.ttf src/latin/Roboto-BlackItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL1JvYm90by1CbGFja0l0YWxpYy50dGYiLCJyZWZlcmVuY2UiOiJzcmMvbGF0aW4vUm9ib3RvLUJsYWNrSXRhbGljLnR0ZiIsIm91dCI6Im91dC90dGYvUm9ib3RvLUJsYWNrSXRhbGljLnR0ZiJ9
build/ttf/Roboto-BlackItalic.ttf: src/latin/Roboto-BlackItalic.ttf build/c2q/NotoSansCJKsc-Black.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Sb2JvdG8tQmxhY2tJdGFsaWMudHRmIiwiY2prIjoiYnVpbGQvYzJxL05vdG9TYW5zQ0pLc2MtQmxhY2sudHRmIiwib3V0IjoiYnVpbGQvdHRmL1JvYm90by1CbGFja0l0YWxpYy50dGYiLCJpdGFsaXplIjowLjE3MzMsImNvbmRlbnNlIjoxfQ==
out/ttf/NotoSerif-Regular.ttf: build/ttf/NotoSerif-Regular.ttf src/latin/NotoSerif-Regular.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL05vdG9TZXJpZi1SZWd1bGFyLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtUmVndWxhci50dGYiLCJvdXQiOiJvdXQvdHRmL05vdG9TZXJpZi1SZWd1bGFyLnR0ZiJ9
build/ttf/NotoSerif-Regular.ttf: src/latin/NotoSerif-Regular.ttf build/c2q/NotoSerifCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtUmVndWxhci50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NlcmlmQ0pLc2MtUmVndWxhci50dGYiLCJvdXQiOiJidWlsZC90dGYvTm90b1NlcmlmLVJlZ3VsYXIudHRmIiwiaXRhbGl6ZSI6MCwiY29uZGVuc2UiOjF9
out/ttf/NotoSerif-Italic.ttf: build/ttf/NotoSerif-Italic.ttf src/latin/NotoSerif-Italic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL05vdG9TZXJpZi1JdGFsaWMudHRmIiwicmVmZXJlbmNlIjoic3JjL2xhdGluL05vdG9TZXJpZi1JdGFsaWMudHRmIiwib3V0Ijoib3V0L3R0Zi9Ob3RvU2VyaWYtSXRhbGljLnR0ZiJ9
build/ttf/NotoSerif-Italic.ttf: src/latin/NotoSerif-Italic.ttf build/c2q/NotoSerifCJKsc-Regular.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtSXRhbGljLnR0ZiIsImNqayI6ImJ1aWxkL2MycS9Ob3RvU2VyaWZDSktzYy1SZWd1bGFyLnR0ZiIsIm91dCI6ImJ1aWxkL3R0Zi9Ob3RvU2VyaWYtSXRhbGljLnR0ZiIsIml0YWxpemUiOjAuMjEyNSwiY29uZGVuc2UiOjF9
out/ttf/NotoSerif-Bold.ttf: build/ttf/NotoSerif-Bold.ttf src/latin/NotoSerif-Bold.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL05vdG9TZXJpZi1Cb2xkLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtQm9sZC50dGYiLCJvdXQiOiJvdXQvdHRmL05vdG9TZXJpZi1Cb2xkLnR0ZiJ9
build/ttf/NotoSerif-Bold.ttf: src/latin/NotoSerif-Bold.ttf build/c2q/NotoSerifCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtQm9sZC50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NlcmlmQ0pLc2MtQm9sZC50dGYiLCJvdXQiOiJidWlsZC90dGYvTm90b1NlcmlmLUJvbGQudHRmIiwiaXRhbGl6ZSI6MCwiY29uZGVuc2UiOjF9
out/ttf/NotoSerif-BoldItalic.ttf: build/ttf/NotoSerif-BoldItalic.ttf src/latin/NotoSerif-BoldItalic.ttf
	mkdir -p out/ttf/
	python fix-metrics.py eyJmb250IjoiYnVpbGQvdHRmL05vdG9TZXJpZi1Cb2xkSXRhbGljLnR0ZiIsInJlZmVyZW5jZSI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtQm9sZEl0YWxpYy50dGYiLCJvdXQiOiJvdXQvdHRmL05vdG9TZXJpZi1Cb2xkSXRhbGljLnR0ZiJ9
build/ttf/NotoSerif-BoldItalic.ttf: src/latin/NotoSerif-BoldItalic.ttf build/c2q/NotoSerifCJKsc-Bold.ttf
	mkdir -p build/ttf/
	python merge.py eyJsYXRpbiI6InNyYy9sYXRpbi9Ob3RvU2VyaWYtQm9sZEl0YWxpYy50dGYiLCJjamsiOiJidWlsZC9jMnEvTm90b1NlcmlmQ0pLc2MtQm9sZC50dGYiLCJvdXQiOiJidWlsZC90dGYvTm90b1NlcmlmLUJvbGRJdGFsaWMudHRmIiwiaXRhbGl6ZSI6MC4yMTI1LCJjb25kZW5zZSI6MX0=
build/c2q/-.ttf: src/cjk/-.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/B.ttf: src/cjk/B.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/C.ttf: src/cjk/C.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/J.ttf: src/cjk/J.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/K.ttf: src/cjk/K.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/L.ttf: src/cjk/L.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/M.ttf: src/cjk/M.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/N.ttf: src/cjk/N.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Black.ttf: src/cjk/NotoSansCJKhk-Black.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Bold.ttf: src/cjk/NotoSansCJKhk-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Light.ttf: src/cjk/NotoSansCJKhk-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Medium.ttf: src/cjk/NotoSansCJKhk-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Regular.ttf: src/cjk/NotoSansCJKhk-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKhk-Thin.ttf: src/cjk/NotoSansCJKhk-Thin.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Black.ttf: src/cjk/NotoSansCJKjp-Black.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Bold.ttf: src/cjk/NotoSansCJKjp-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Light.ttf: src/cjk/NotoSansCJKjp-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Medium.ttf: src/cjk/NotoSansCJKjp-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Regular.ttf: src/cjk/NotoSansCJKjp-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKjp-Thin.ttf: src/cjk/NotoSansCJKjp-Thin.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Black.ttf: src/cjk/NotoSansCJKkr-Black.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Bold.ttf: src/cjk/NotoSansCJKkr-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Light.ttf: src/cjk/NotoSansCJKkr-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Medium.ttf: src/cjk/NotoSansCJKkr-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Regular.ttf: src/cjk/NotoSansCJKkr-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKkr-Thin.ttf: src/cjk/NotoSansCJKkr-Thin.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Black.ttf: src/cjk/NotoSansCJKsc-Black.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Bold.ttf: src/cjk/NotoSansCJKsc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Light.ttf: src/cjk/NotoSansCJKsc-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Medium.ttf: src/cjk/NotoSansCJKsc-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Regular.ttf: src/cjk/NotoSansCJKsc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKsc-Thin.ttf: src/cjk/NotoSansCJKsc-Thin.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Black.ttf: src/cjk/NotoSansCJKtc-Black.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Bold.ttf: src/cjk/NotoSansCJKtc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Light.ttf: src/cjk/NotoSansCJKtc-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Medium.ttf: src/cjk/NotoSansCJKtc-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Regular.ttf: src/cjk/NotoSansCJKtc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansCJKtc-Thin.ttf: src/cjk/NotoSansCJKtc-Thin.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKhk-Bold.ttf: src/cjk/NotoSansMonoCJKhk-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKhk-Regular.ttf: src/cjk/NotoSansMonoCJKhk-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKjp-Bold.ttf: src/cjk/NotoSansMonoCJKjp-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKjp-Regular.ttf: src/cjk/NotoSansMonoCJKjp-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKkr-Bold.ttf: src/cjk/NotoSansMonoCJKkr-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKkr-Regular.ttf: src/cjk/NotoSansMonoCJKkr-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKsc-Bold.ttf: src/cjk/NotoSansMonoCJKsc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKsc-Regular.ttf: src/cjk/NotoSansMonoCJKsc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKtc-Bold.ttf: src/cjk/NotoSansMonoCJKtc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSansMonoCJKtc-Regular.ttf: src/cjk/NotoSansMonoCJKtc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKjp-Bold.ttf: src/cjk/NotoSerifCJKjp-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKjp-Regular.ttf: src/cjk/NotoSerifCJKjp-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKkr-Bold.ttf: src/cjk/NotoSerifCJKkr-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKkr-Regular.ttf: src/cjk/NotoSerifCJKkr-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKsc-Bold.ttf: src/cjk/NotoSerifCJKsc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKsc-Regular.ttf: src/cjk/NotoSerifCJKsc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKtc-Bold.ttf: src/cjk/NotoSerifCJKtc-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/NotoSerifCJKtc-Regular.ttf: src/cjk/NotoSerifCJKtc-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/R.ttf: src/cjk/R.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/S.ttf: src/cjk/S.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-Bold.ttf: src/cjk/SourceHanSans-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-ExtraLight.ttf: src/cjk/SourceHanSans-ExtraLight.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-Heavy.ttf: src/cjk/SourceHanSans-Heavy.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-Light.ttf: src/cjk/SourceHanSans-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-Medium.ttf: src/cjk/SourceHanSans-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSans-Regular.ttf: src/cjk/SourceHanSans-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-Bold.ttf: src/cjk/SourceHanSansHC-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-ExtraLight.ttf: src/cjk/SourceHanSansHC-ExtraLight.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-Heavy.ttf: src/cjk/SourceHanSansHC-Heavy.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-Light.ttf: src/cjk/SourceHanSansHC-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-Medium.ttf: src/cjk/SourceHanSansHC-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansHC-Regular.ttf: src/cjk/SourceHanSansHC-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-Bold.ttf: src/cjk/SourceHanSansK-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-ExtraLight.ttf: src/cjk/SourceHanSansK-ExtraLight.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-Heavy.ttf: src/cjk/SourceHanSansK-Heavy.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-Light.ttf: src/cjk/SourceHanSansK-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-Medium.ttf: src/cjk/SourceHanSansK-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansK-Regular.ttf: src/cjk/SourceHanSansK-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-Bold.ttf: src/cjk/SourceHanSansSC-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-ExtraLight.ttf: src/cjk/SourceHanSansSC-ExtraLight.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-Heavy.ttf: src/cjk/SourceHanSansSC-Heavy.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-Light.ttf: src/cjk/SourceHanSansSC-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-Medium.ttf: src/cjk/SourceHanSansSC-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansSC-Regular.ttf: src/cjk/SourceHanSansSC-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-Bold.ttf: src/cjk/SourceHanSansTC-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-ExtraLight.ttf: src/cjk/SourceHanSansTC-ExtraLight.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-Heavy.ttf: src/cjk/SourceHanSansTC-Heavy.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-Light.ttf: src/cjk/SourceHanSansTC-Light.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-Medium.ttf: src/cjk/SourceHanSansTC-Medium.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSansTC-Regular.ttf: src/cjk/SourceHanSansTC-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerif-Bold.ttf: src/cjk/SourceHanSerif-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerif-Regular.ttf: src/cjk/SourceHanSerif-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifK-Bold.ttf: src/cjk/SourceHanSerifK-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifK-Regular.ttf: src/cjk/SourceHanSerifK-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifSC-Bold.ttf: src/cjk/SourceHanSerifSC-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifSC-Regular.ttf: src/cjk/SourceHanSerifSC-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifTC-Bold.ttf: src/cjk/SourceHanSerifTC-Bold.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/SourceHanSerifTC-Regular.ttf: src/cjk/SourceHanSerifTC-Regular.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/T.ttf: src/cjk/T.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/a.ttf: src/cjk/a.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/c.ttf: src/cjk/c.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/d.ttf: src/cjk/d.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/e.ttf: src/cjk/e.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/f.ttf: src/cjk/f.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/g.ttf: src/cjk/g.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/h.ttf: src/cjk/h.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/i.ttf: src/cjk/i.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/k.ttf: src/cjk/k.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/l.ttf: src/cjk/l.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/m.ttf: src/cjk/m.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/n.ttf: src/cjk/n.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/o.ttf: src/cjk/o.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/r.ttf: src/cjk/r.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/s.ttf: src/cjk/s.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/t.ttf: src/cjk/t.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
build/c2q/u.ttf: src/cjk/u.otf
	mkdir -p build/c2q/
	otfccdump --ignore-hints --quiet $< | node node_modules/otfcc-c2q/_c2q_startup.js | otfccbuild --quiet --short-post --keep-average-char-width -O3 -o $@
