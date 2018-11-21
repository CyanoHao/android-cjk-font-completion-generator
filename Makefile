.PHONY: all clean mkdir

all: mkdir ttc/Roboto-Thin.ttf ttc/Roboto-Light.ttf ttc/Roboto-Regular.ttf ttc/Roboto-Medium.ttf ttc/Roboto-Bold.ttf ttc/Roboto-Black.ttf out/Roboto-ThinItalic.ttf out/Roboto-LightItalic.ttf out/Roboto-Italic.ttf out/Roboto-MediumItalic.ttf out/Roboto-BoldItalic.ttf out/Roboto-BlackItalic.ttf out/RobotoCondensed-Light.ttf out/RobotoCondensed-Regular.ttf out/RobotoCondensed-Medium.ttf out/RobotoCondensed-Bold.ttf out/RobotoCondensed-LightItalic.ttf out/RobotoCondensed-Italic.ttf out/RobotoCondensed-MediumItalic.ttf out/RobotoCondensed-BoldItalic.ttf out/NotoSerif-Regular.ttf out/NotoSerif-Bold.ttf out/NotoSerif-Italic.ttf out/NotoSerif-BoldItalic.ttf

clean:
	-rm -r cjk/
	-rm -r lcg/
	-rm out/Roboto-{Thin,Light,Regular,Medium,Bold,Black}.ttf

mkdir:
	mkdir -p cjk/unkerned
	mkdir -p lcg/
	mkdir -p out/
	mkdir -p ttc/

ttc/Roboto-Thin.ttf: ttc/Roboto-Thin.0.ttf ttc/Roboto-Thin.1.ttf ttc/Roboto-Thin.2.ttf ttc/Roboto-Thin.3.ttf ttc/Roboto-Thin.4.ttf
	otf2otc ttc/Roboto-Thin.{0,1,2,3,4}.ttf -o ttc/Roboto-Thin.ttc
	rm ttc/Roboto-Thin.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Thin.ttc ttc/Roboto-Thin.ttf
ttc/Roboto-Thin.0.ttf: ttc/Roboto-Thin.0.otd
	otfccbuild ttc/Roboto-Thin.0.otd -O2 -k -o ttc/Roboto-Thin.0.ttf
	ttx -t 'head' -o Roboto-Thin.ttx lcg/Roboto-Thin.ttf
	ttx -m ttc/Roboto-Thin.0.ttf -o ttc/Roboto-Thin.0.ttf Roboto-Thin.ttx
	rm Roboto-Thin.ttx ttc/Roboto-Thin.0.otd
ttc/Roboto-Thin.0.otd: out/Roboto-Thin.ttf cjk/NotoSansCJKjp-Thin.ttf cjk/NotoSansCJKkr-Thin.ttf cjk/NotoSansCJKsc-Thin.ttf cjk/NotoSansCJKtc-Thin.ttf
	otfcc-ttcize --prefix ttc/Roboto-Thin out/Roboto-Thin.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Thin.ttf
ttc/Roboto-Thin.1.ttf: ttc/Roboto-Thin.1.otd
	otfccbuild ttc/Roboto-Thin.1.otd -O2 -k -o ttc/Roboto-Thin.1.ttf
	rm ttc/Roboto-Thin.1.otd
ttc/Roboto-Thin.1.otd: ttc/Roboto-Thin.0.otd
ttc/Roboto-Thin.2.ttf: ttc/Roboto-Thin.2.otd
	otfccbuild ttc/Roboto-Thin.2.otd -O2 -k -o ttc/Roboto-Thin.2.ttf
	rm ttc/Roboto-Thin.2.otd
ttc/Roboto-Thin.2.otd: ttc/Roboto-Thin.0.otd
ttc/Roboto-Thin.3.ttf: ttc/Roboto-Thin.3.otd
	otfccbuild ttc/Roboto-Thin.3.otd -O2 -k -o ttc/Roboto-Thin.3.ttf
	rm ttc/Roboto-Thin.3.otd
ttc/Roboto-Thin.3.otd: ttc/Roboto-Thin.0.otd
ttc/Roboto-Thin.4.ttf: ttc/Roboto-Thin.4.otd
	otfccbuild ttc/Roboto-Thin.4.otd -O2 -k -o ttc/Roboto-Thin.4.ttf
	rm ttc/Roboto-Thin.4.otd
ttc/Roboto-Thin.4.otd: ttc/Roboto-Thin.0.otd
ttc/Roboto-Light.ttf: ttc/Roboto-Light.0.ttf ttc/Roboto-Light.1.ttf ttc/Roboto-Light.2.ttf ttc/Roboto-Light.3.ttf ttc/Roboto-Light.4.ttf
	otf2otc ttc/Roboto-Light.{0,1,2,3,4}.ttf -o ttc/Roboto-Light.ttc
	rm ttc/Roboto-Light.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Light.ttc ttc/Roboto-Light.ttf
ttc/Roboto-Light.0.ttf: ttc/Roboto-Light.0.otd
	otfccbuild ttc/Roboto-Light.0.otd -O2 -k -o ttc/Roboto-Light.0.ttf
	ttx -t 'head' -o Roboto-Light.ttx lcg/Roboto-Light.ttf
	ttx -m ttc/Roboto-Light.0.ttf -o ttc/Roboto-Light.0.ttf Roboto-Light.ttx
	rm Roboto-Light.ttx ttc/Roboto-Light.0.otd
ttc/Roboto-Light.0.otd: out/Roboto-Light.ttf cjk/NotoSansCJKjp-Light.ttf cjk/NotoSansCJKkr-Light.ttf cjk/NotoSansCJKsc-Light.ttf cjk/NotoSansCJKtc-Light.ttf
	otfcc-ttcize --prefix ttc/Roboto-Light out/Roboto-Light.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Light.ttf
ttc/Roboto-Light.1.ttf: ttc/Roboto-Light.1.otd
	otfccbuild ttc/Roboto-Light.1.otd -O2 -k -o ttc/Roboto-Light.1.ttf
	rm ttc/Roboto-Light.1.otd
ttc/Roboto-Light.1.otd: ttc/Roboto-Light.0.otd
ttc/Roboto-Light.2.ttf: ttc/Roboto-Light.2.otd
	otfccbuild ttc/Roboto-Light.2.otd -O2 -k -o ttc/Roboto-Light.2.ttf
	rm ttc/Roboto-Light.2.otd
ttc/Roboto-Light.2.otd: ttc/Roboto-Light.0.otd
ttc/Roboto-Light.3.ttf: ttc/Roboto-Light.3.otd
	otfccbuild ttc/Roboto-Light.3.otd -O2 -k -o ttc/Roboto-Light.3.ttf
	rm ttc/Roboto-Light.3.otd
ttc/Roboto-Light.3.otd: ttc/Roboto-Light.0.otd
ttc/Roboto-Light.4.ttf: ttc/Roboto-Light.4.otd
	otfccbuild ttc/Roboto-Light.4.otd -O2 -k -o ttc/Roboto-Light.4.ttf
	rm ttc/Roboto-Light.4.otd
ttc/Roboto-Light.4.otd: ttc/Roboto-Light.0.otd
ttc/Roboto-Regular.ttf: ttc/Roboto-Regular.0.ttf ttc/Roboto-Regular.1.ttf ttc/Roboto-Regular.2.ttf ttc/Roboto-Regular.3.ttf ttc/Roboto-Regular.4.ttf
	otf2otc ttc/Roboto-Regular.{0,1,2,3,4}.ttf -o ttc/Roboto-Regular.ttc
	rm ttc/Roboto-Regular.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Regular.ttc ttc/Roboto-Regular.ttf
ttc/Roboto-Regular.0.ttf: ttc/Roboto-Regular.0.otd
	otfccbuild ttc/Roboto-Regular.0.otd -O2 -k -o ttc/Roboto-Regular.0.ttf
	ttx -t 'head' -o Roboto-Regular.ttx lcg/Roboto-Regular.ttf
	ttx -m ttc/Roboto-Regular.0.ttf -o ttc/Roboto-Regular.0.ttf Roboto-Regular.ttx
	rm Roboto-Regular.ttx ttc/Roboto-Regular.0.otd
ttc/Roboto-Regular.0.otd: out/Roboto-Regular.ttf cjk/NotoSansCJKjp-Regular.ttf cjk/NotoSansCJKkr-Regular.ttf cjk/NotoSansCJKsc-Regular.ttf cjk/NotoSansCJKtc-Regular.ttf
	otfcc-ttcize --prefix ttc/Roboto-Regular out/Roboto-Regular.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Regular.ttf
ttc/Roboto-Regular.1.ttf: ttc/Roboto-Regular.1.otd
	otfccbuild ttc/Roboto-Regular.1.otd -O2 -k -o ttc/Roboto-Regular.1.ttf
	rm ttc/Roboto-Regular.1.otd
ttc/Roboto-Regular.1.otd: ttc/Roboto-Regular.0.otd
ttc/Roboto-Regular.2.ttf: ttc/Roboto-Regular.2.otd
	otfccbuild ttc/Roboto-Regular.2.otd -O2 -k -o ttc/Roboto-Regular.2.ttf
	rm ttc/Roboto-Regular.2.otd
ttc/Roboto-Regular.2.otd: ttc/Roboto-Regular.0.otd
ttc/Roboto-Regular.3.ttf: ttc/Roboto-Regular.3.otd
	otfccbuild ttc/Roboto-Regular.3.otd -O2 -k -o ttc/Roboto-Regular.3.ttf
	rm ttc/Roboto-Regular.3.otd
ttc/Roboto-Regular.3.otd: ttc/Roboto-Regular.0.otd
ttc/Roboto-Regular.4.ttf: ttc/Roboto-Regular.4.otd
	otfccbuild ttc/Roboto-Regular.4.otd -O2 -k -o ttc/Roboto-Regular.4.ttf
	rm ttc/Roboto-Regular.4.otd
ttc/Roboto-Regular.4.otd: ttc/Roboto-Regular.0.otd
ttc/Roboto-Medium.ttf: ttc/Roboto-Medium.0.ttf ttc/Roboto-Medium.1.ttf ttc/Roboto-Medium.2.ttf ttc/Roboto-Medium.3.ttf ttc/Roboto-Medium.4.ttf
	otf2otc ttc/Roboto-Medium.{0,1,2,3,4}.ttf -o ttc/Roboto-Medium.ttc
	rm ttc/Roboto-Medium.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Medium.ttc ttc/Roboto-Medium.ttf
ttc/Roboto-Medium.0.ttf: ttc/Roboto-Medium.0.otd
	otfccbuild ttc/Roboto-Medium.0.otd -O2 -k -o ttc/Roboto-Medium.0.ttf
	ttx -t 'head' -o Roboto-Medium.ttx lcg/Roboto-Medium.ttf
	ttx -m ttc/Roboto-Medium.0.ttf -o ttc/Roboto-Medium.0.ttf Roboto-Medium.ttx
	rm Roboto-Medium.ttx ttc/Roboto-Medium.0.otd
ttc/Roboto-Medium.0.otd: out/Roboto-Medium.ttf cjk/NotoSansCJKjp-Medium.ttf cjk/NotoSansCJKkr-Medium.ttf cjk/NotoSansCJKsc-Medium.ttf cjk/NotoSansCJKtc-Medium.ttf
	otfcc-ttcize --prefix ttc/Roboto-Medium out/Roboto-Medium.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Medium.ttf
ttc/Roboto-Medium.1.ttf: ttc/Roboto-Medium.1.otd
	otfccbuild ttc/Roboto-Medium.1.otd -O2 -k -o ttc/Roboto-Medium.1.ttf
	rm ttc/Roboto-Medium.1.otd
ttc/Roboto-Medium.1.otd: ttc/Roboto-Medium.0.otd
ttc/Roboto-Medium.2.ttf: ttc/Roboto-Medium.2.otd
	otfccbuild ttc/Roboto-Medium.2.otd -O2 -k -o ttc/Roboto-Medium.2.ttf
	rm ttc/Roboto-Medium.2.otd
ttc/Roboto-Medium.2.otd: ttc/Roboto-Medium.0.otd
ttc/Roboto-Medium.3.ttf: ttc/Roboto-Medium.3.otd
	otfccbuild ttc/Roboto-Medium.3.otd -O2 -k -o ttc/Roboto-Medium.3.ttf
	rm ttc/Roboto-Medium.3.otd
ttc/Roboto-Medium.3.otd: ttc/Roboto-Medium.0.otd
ttc/Roboto-Medium.4.ttf: ttc/Roboto-Medium.4.otd
	otfccbuild ttc/Roboto-Medium.4.otd -O2 -k -o ttc/Roboto-Medium.4.ttf
	rm ttc/Roboto-Medium.4.otd
ttc/Roboto-Medium.4.otd: ttc/Roboto-Medium.0.otd
ttc/Roboto-Bold.ttf: ttc/Roboto-Bold.0.ttf ttc/Roboto-Bold.1.ttf ttc/Roboto-Bold.2.ttf ttc/Roboto-Bold.3.ttf ttc/Roboto-Bold.4.ttf
	otf2otc ttc/Roboto-Bold.{0,1,2,3,4}.ttf -o ttc/Roboto-Bold.ttc
	rm ttc/Roboto-Bold.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Bold.ttc ttc/Roboto-Bold.ttf
ttc/Roboto-Bold.0.ttf: ttc/Roboto-Bold.0.otd
	otfccbuild ttc/Roboto-Bold.0.otd -O2 -k -o ttc/Roboto-Bold.0.ttf
	ttx -t 'head' -o Roboto-Bold.ttx lcg/Roboto-Bold.ttf
	ttx -m ttc/Roboto-Bold.0.ttf -o ttc/Roboto-Bold.0.ttf Roboto-Bold.ttx
	rm Roboto-Bold.ttx ttc/Roboto-Bold.0.otd
ttc/Roboto-Bold.0.otd: out/Roboto-Bold.ttf cjk/NotoSansCJKjp-Bold.ttf cjk/NotoSansCJKkr-Bold.ttf cjk/NotoSansCJKsc-Bold.ttf cjk/NotoSansCJKtc-Bold.ttf
	otfcc-ttcize --prefix ttc/Roboto-Bold out/Roboto-Bold.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Bold.ttf
ttc/Roboto-Bold.1.ttf: ttc/Roboto-Bold.1.otd
	otfccbuild ttc/Roboto-Bold.1.otd -O2 -k -o ttc/Roboto-Bold.1.ttf
	rm ttc/Roboto-Bold.1.otd
ttc/Roboto-Bold.1.otd: ttc/Roboto-Bold.0.otd
ttc/Roboto-Bold.2.ttf: ttc/Roboto-Bold.2.otd
	otfccbuild ttc/Roboto-Bold.2.otd -O2 -k -o ttc/Roboto-Bold.2.ttf
	rm ttc/Roboto-Bold.2.otd
ttc/Roboto-Bold.2.otd: ttc/Roboto-Bold.0.otd
ttc/Roboto-Bold.3.ttf: ttc/Roboto-Bold.3.otd
	otfccbuild ttc/Roboto-Bold.3.otd -O2 -k -o ttc/Roboto-Bold.3.ttf
	rm ttc/Roboto-Bold.3.otd
ttc/Roboto-Bold.3.otd: ttc/Roboto-Bold.0.otd
ttc/Roboto-Bold.4.ttf: ttc/Roboto-Bold.4.otd
	otfccbuild ttc/Roboto-Bold.4.otd -O2 -k -o ttc/Roboto-Bold.4.ttf
	rm ttc/Roboto-Bold.4.otd
ttc/Roboto-Bold.4.otd: ttc/Roboto-Bold.0.otd
ttc/Roboto-Black.ttf: ttc/Roboto-Black.0.ttf ttc/Roboto-Black.1.ttf ttc/Roboto-Black.2.ttf ttc/Roboto-Black.3.ttf ttc/Roboto-Black.4.ttf
	otf2otc ttc/Roboto-Black.{0,1,2,3,4}.ttf -o ttc/Roboto-Black.ttc
	rm ttc/Roboto-Black.{0,1,2,3,4}.ttf
	mv ttc/Roboto-Black.ttc ttc/Roboto-Black.ttf
ttc/Roboto-Black.0.ttf: ttc/Roboto-Black.0.otd
	otfccbuild ttc/Roboto-Black.0.otd -O2 -k -o ttc/Roboto-Black.0.ttf
	ttx -t 'head' -o Roboto-Black.ttx lcg/Roboto-Black.ttf
	ttx -m ttc/Roboto-Black.0.ttf -o ttc/Roboto-Black.0.ttf Roboto-Black.ttx
	rm Roboto-Black.ttx ttc/Roboto-Black.0.otd
ttc/Roboto-Black.0.otd: out/Roboto-Black.ttf cjk/NotoSansCJKjp-Black.ttf cjk/NotoSansCJKkr-Black.ttf cjk/NotoSansCJKsc-Black.ttf cjk/NotoSansCJKtc-Black.ttf
	otfcc-ttcize --prefix ttc/Roboto-Black out/Roboto-Black.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-Black.ttf
ttc/Roboto-Black.1.ttf: ttc/Roboto-Black.1.otd
	otfccbuild ttc/Roboto-Black.1.otd -O2 -k -o ttc/Roboto-Black.1.ttf
	rm ttc/Roboto-Black.1.otd
ttc/Roboto-Black.1.otd: ttc/Roboto-Black.0.otd
ttc/Roboto-Black.2.ttf: ttc/Roboto-Black.2.otd
	otfccbuild ttc/Roboto-Black.2.otd -O2 -k -o ttc/Roboto-Black.2.ttf
	rm ttc/Roboto-Black.2.otd
ttc/Roboto-Black.2.otd: ttc/Roboto-Black.0.otd
ttc/Roboto-Black.3.ttf: ttc/Roboto-Black.3.otd
	otfccbuild ttc/Roboto-Black.3.otd -O2 -k -o ttc/Roboto-Black.3.ttf
	rm ttc/Roboto-Black.3.otd
ttc/Roboto-Black.3.otd: ttc/Roboto-Black.0.otd
ttc/Roboto-Black.4.ttf: ttc/Roboto-Black.4.otd
	otfccbuild ttc/Roboto-Black.4.otd -O2 -k -o ttc/Roboto-Black.4.ttf
	rm ttc/Roboto-Black.4.otd
ttc/Roboto-Black.4.otd: ttc/Roboto-Black.0.otd
out/Roboto-Thin.ttf: out/Roboto-Thin.otd out/NotoSansCJKsc-Thin.otd
	python 6-merge.py out/Roboto-Thin.otd out/NotoSansCJKsc-Thin.otd
	otfccbuild out/Roboto-Thin.otd -O3 -o out/Roboto-Thin.ttf
	rm out/Roboto-Thin.otd out/NotoSansCJKsc-Thin.otd
	ttx -t 'head' -o Roboto-Thin.ttx lcg/Roboto-Thin.ttf
	ttx -m out/Roboto-Thin.ttf -o out/Roboto-Thin.ttf Roboto-Thin.ttx
	rm Roboto-Thin.ttx
out/Roboto-Thin.otd: lcg/Roboto-Thin.ttf
	otfccdump lcg/Roboto-Thin.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Thin.otd
out/NotoSansCJKsc-Thin.otd: cjk/unkerned/NotoSansCJKsc-Thin.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Thin.ttf -o out/NotoSansCJKsc-Thin.otd
out/Roboto-Light.ttf: out/Roboto-Light.otd out/NotoSansCJKsc-Light.otd
	python 6-merge.py out/Roboto-Light.otd out/NotoSansCJKsc-Light.otd
	otfccbuild out/Roboto-Light.otd -O3 -o out/Roboto-Light.ttf
	rm out/Roboto-Light.otd out/NotoSansCJKsc-Light.otd
	ttx -t 'head' -o Roboto-Light.ttx lcg/Roboto-Light.ttf
	ttx -m out/Roboto-Light.ttf -o out/Roboto-Light.ttf Roboto-Light.ttx
	rm Roboto-Light.ttx
out/Roboto-Light.otd: lcg/Roboto-Light.ttf
	otfccdump lcg/Roboto-Light.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Light.otd
out/NotoSansCJKsc-Light.otd: cjk/unkerned/NotoSansCJKsc-Light.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Light.ttf -o out/NotoSansCJKsc-Light.otd
out/Roboto-Regular.ttf: out/Roboto-Regular.otd out/NotoSansCJKsc-Regular.otd
	python 6-merge.py out/Roboto-Regular.otd out/NotoSansCJKsc-Regular.otd
	otfccbuild out/Roboto-Regular.otd -O3 -o out/Roboto-Regular.ttf
	rm out/Roboto-Regular.otd out/NotoSansCJKsc-Regular.otd
	ttx -t 'head' -o Roboto-Regular.ttx lcg/Roboto-Regular.ttf
	ttx -m out/Roboto-Regular.ttf -o out/Roboto-Regular.ttf Roboto-Regular.ttx
	rm Roboto-Regular.ttx
out/Roboto-Regular.otd: lcg/Roboto-Regular.ttf
	otfccdump lcg/Roboto-Regular.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Regular.otd
out/NotoSansCJKsc-Regular.otd: cjk/unkerned/NotoSansCJKsc-Regular.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Regular.ttf -o out/NotoSansCJKsc-Regular.otd
out/Roboto-Medium.ttf: out/Roboto-Medium.otd out/NotoSansCJKsc-Medium.otd
	python 6-merge.py out/Roboto-Medium.otd out/NotoSansCJKsc-Medium.otd
	otfccbuild out/Roboto-Medium.otd -O3 -o out/Roboto-Medium.ttf
	rm out/Roboto-Medium.otd out/NotoSansCJKsc-Medium.otd
	ttx -t 'head' -o Roboto-Medium.ttx lcg/Roboto-Medium.ttf
	ttx -m out/Roboto-Medium.ttf -o out/Roboto-Medium.ttf Roboto-Medium.ttx
	rm Roboto-Medium.ttx
out/Roboto-Medium.otd: lcg/Roboto-Medium.ttf
	otfccdump lcg/Roboto-Medium.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Medium.otd
out/NotoSansCJKsc-Medium.otd: cjk/unkerned/NotoSansCJKsc-Medium.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Medium.ttf -o out/NotoSansCJKsc-Medium.otd
out/Roboto-Bold.ttf: out/Roboto-Bold.otd out/NotoSansCJKsc-Bold.otd
	python 6-merge.py out/Roboto-Bold.otd out/NotoSansCJKsc-Bold.otd
	otfccbuild out/Roboto-Bold.otd -O3 -o out/Roboto-Bold.ttf
	rm out/Roboto-Bold.otd out/NotoSansCJKsc-Bold.otd
	ttx -t 'head' -o Roboto-Bold.ttx lcg/Roboto-Bold.ttf
	ttx -m out/Roboto-Bold.ttf -o out/Roboto-Bold.ttf Roboto-Bold.ttx
	rm Roboto-Bold.ttx
out/Roboto-Bold.otd: lcg/Roboto-Bold.ttf
	otfccdump lcg/Roboto-Bold.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Bold.otd
out/NotoSansCJKsc-Bold.otd: cjk/unkerned/NotoSansCJKsc-Bold.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Bold.ttf -o out/NotoSansCJKsc-Bold.otd
out/Roboto-Black.ttf: out/Roboto-Black.otd out/NotoSansCJKsc-Black.otd
	python 6-merge.py out/Roboto-Black.otd out/NotoSansCJKsc-Black.otd
	otfccbuild out/Roboto-Black.otd -O3 -o out/Roboto-Black.ttf
	rm out/Roboto-Black.otd out/NotoSansCJKsc-Black.otd
	ttx -t 'head' -o Roboto-Black.ttx lcg/Roboto-Black.ttf
	ttx -m out/Roboto-Black.ttf -o out/Roboto-Black.ttf Roboto-Black.ttx
	rm Roboto-Black.ttx
out/Roboto-Black.otd: lcg/Roboto-Black.ttf
	otfccdump lcg/Roboto-Black.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Black.otd
out/NotoSansCJKsc-Black.otd: cjk/unkerned/NotoSansCJKsc-Black.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Black.ttf -o out/NotoSansCJKsc-Black.otd
out/Roboto-ThinItalic.ttf: out/Roboto-ThinItalic.otd out/NotoSansCJKsc-ThinItalic.otd
	python 6-merge.py out/Roboto-ThinItalic.otd out/NotoSansCJKsc-ThinItalic.otd
	otfccbuild out/Roboto-ThinItalic.otd -O3 -o out/Roboto-ThinItalic.ttf
	rm out/Roboto-ThinItalic.otd out/NotoSansCJKsc-ThinItalic.otd
	ttx -t 'head' -o Roboto-ThinItalic.ttx lcg/Roboto-ThinItalic.ttf
	ttx -m out/Roboto-ThinItalic.ttf -o out/Roboto-ThinItalic.ttf Roboto-ThinItalic.ttx
	rm Roboto-ThinItalic.ttx
out/Roboto-ThinItalic.otd: lcg/Roboto-ThinItalic.ttf
	otfccdump lcg/Roboto-ThinItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-ThinItalic.otd
out/NotoSansCJKsc-ThinItalic.otd: cjk/unkerned/NotoSansCJKsc-ThinItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-ThinItalic.ttf -o out/NotoSansCJKsc-ThinItalic.otd
out/Roboto-LightItalic.ttf: out/Roboto-LightItalic.otd out/NotoSansCJKsc-LightItalic.otd
	python 6-merge.py out/Roboto-LightItalic.otd out/NotoSansCJKsc-LightItalic.otd
	otfccbuild out/Roboto-LightItalic.otd -O3 -o out/Roboto-LightItalic.ttf
	rm out/Roboto-LightItalic.otd out/NotoSansCJKsc-LightItalic.otd
	ttx -t 'head' -o Roboto-LightItalic.ttx lcg/Roboto-LightItalic.ttf
	ttx -m out/Roboto-LightItalic.ttf -o out/Roboto-LightItalic.ttf Roboto-LightItalic.ttx
	rm Roboto-LightItalic.ttx
out/Roboto-LightItalic.otd: lcg/Roboto-LightItalic.ttf
	otfccdump lcg/Roboto-LightItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-LightItalic.otd
out/NotoSansCJKsc-LightItalic.otd: cjk/unkerned/NotoSansCJKsc-LightItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-LightItalic.ttf -o out/NotoSansCJKsc-LightItalic.otd
out/Roboto-Italic.ttf: out/Roboto-Italic.otd out/NotoSansCJKsc-Italic.otd
	python 6-merge.py out/Roboto-Italic.otd out/NotoSansCJKsc-Italic.otd
	otfccbuild out/Roboto-Italic.otd -O3 -o out/Roboto-Italic.ttf
	rm out/Roboto-Italic.otd out/NotoSansCJKsc-Italic.otd
	ttx -t 'head' -o Roboto-Italic.ttx lcg/Roboto-Italic.ttf
	ttx -m out/Roboto-Italic.ttf -o out/Roboto-Italic.ttf Roboto-Italic.ttx
	rm Roboto-Italic.ttx
out/Roboto-Italic.otd: lcg/Roboto-Italic.ttf
	otfccdump lcg/Roboto-Italic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Italic.otd
out/NotoSansCJKsc-Italic.otd: cjk/unkerned/NotoSansCJKsc-Italic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-Italic.ttf -o out/NotoSansCJKsc-Italic.otd
out/Roboto-MediumItalic.ttf: out/Roboto-MediumItalic.otd out/NotoSansCJKsc-MediumItalic.otd
	python 6-merge.py out/Roboto-MediumItalic.otd out/NotoSansCJKsc-MediumItalic.otd
	otfccbuild out/Roboto-MediumItalic.otd -O3 -o out/Roboto-MediumItalic.ttf
	rm out/Roboto-MediumItalic.otd out/NotoSansCJKsc-MediumItalic.otd
	ttx -t 'head' -o Roboto-MediumItalic.ttx lcg/Roboto-MediumItalic.ttf
	ttx -m out/Roboto-MediumItalic.ttf -o out/Roboto-MediumItalic.ttf Roboto-MediumItalic.ttx
	rm Roboto-MediumItalic.ttx
out/Roboto-MediumItalic.otd: lcg/Roboto-MediumItalic.ttf
	otfccdump lcg/Roboto-MediumItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-MediumItalic.otd
out/NotoSansCJKsc-MediumItalic.otd: cjk/unkerned/NotoSansCJKsc-MediumItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-MediumItalic.ttf -o out/NotoSansCJKsc-MediumItalic.otd
out/Roboto-BoldItalic.ttf: out/Roboto-BoldItalic.otd out/NotoSansCJKsc-BoldItalic.otd
	python 6-merge.py out/Roboto-BoldItalic.otd out/NotoSansCJKsc-BoldItalic.otd
	otfccbuild out/Roboto-BoldItalic.otd -O3 -o out/Roboto-BoldItalic.ttf
	rm out/Roboto-BoldItalic.otd out/NotoSansCJKsc-BoldItalic.otd
	ttx -t 'head' -o Roboto-BoldItalic.ttx lcg/Roboto-BoldItalic.ttf
	ttx -m out/Roboto-BoldItalic.ttf -o out/Roboto-BoldItalic.ttf Roboto-BoldItalic.ttx
	rm Roboto-BoldItalic.ttx
out/Roboto-BoldItalic.otd: lcg/Roboto-BoldItalic.ttf
	otfccdump lcg/Roboto-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BoldItalic.otd
out/NotoSansCJKsc-BoldItalic.otd: cjk/unkerned/NotoSansCJKsc-BoldItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-BoldItalic.ttf -o out/NotoSansCJKsc-BoldItalic.otd
out/Roboto-BlackItalic.ttf: out/Roboto-BlackItalic.otd out/NotoSansCJKsc-BlackItalic.otd
	python 6-merge.py out/Roboto-BlackItalic.otd out/NotoSansCJKsc-BlackItalic.otd
	otfccbuild out/Roboto-BlackItalic.otd -O3 -o out/Roboto-BlackItalic.ttf
	rm out/Roboto-BlackItalic.otd out/NotoSansCJKsc-BlackItalic.otd
	ttx -t 'head' -o Roboto-BlackItalic.ttx lcg/Roboto-BlackItalic.ttf
	ttx -m out/Roboto-BlackItalic.ttf -o out/Roboto-BlackItalic.ttf Roboto-BlackItalic.ttx
	rm Roboto-BlackItalic.ttx
out/Roboto-BlackItalic.otd: lcg/Roboto-BlackItalic.ttf
	otfccdump lcg/Roboto-BlackItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BlackItalic.otd
out/NotoSansCJKsc-BlackItalic.otd: cjk/unkerned/NotoSansCJKsc-BlackItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKsc-BlackItalic.ttf -o out/NotoSansCJKsc-BlackItalic.otd
out/RobotoCondensed-Light.ttf: out/RobotoCondensed-Light.otd out/NotoSansCJKscCondensed-Light.otd
	python 6-merge.py out/RobotoCondensed-Light.otd out/NotoSansCJKscCondensed-Light.otd
	otfccbuild out/RobotoCondensed-Light.otd -O3 -o out/RobotoCondensed-Light.ttf
	rm out/RobotoCondensed-Light.otd out/NotoSansCJKscCondensed-Light.otd
	ttx -t 'head' -o RobotoCondensed-Light.ttx lcg/RobotoCondensed-Light.ttf
	ttx -m out/RobotoCondensed-Light.ttf -o out/RobotoCondensed-Light.ttf RobotoCondensed-Light.ttx
	rm RobotoCondensed-Light.ttx
out/RobotoCondensed-Light.otd: lcg/RobotoCondensed-Light.ttf
	otfccdump lcg/RobotoCondensed-Light.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Light.otd
out/NotoSansCJKscCondensed-Light.otd: cjk/unkerned/NotoSansCJKscCondensed-Light.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-Light.ttf -o out/NotoSansCJKscCondensed-Light.otd
out/RobotoCondensed-Regular.ttf: out/RobotoCondensed-Regular.otd out/NotoSansCJKscCondensed-Regular.otd
	python 6-merge.py out/RobotoCondensed-Regular.otd out/NotoSansCJKscCondensed-Regular.otd
	otfccbuild out/RobotoCondensed-Regular.otd -O3 -o out/RobotoCondensed-Regular.ttf
	rm out/RobotoCondensed-Regular.otd out/NotoSansCJKscCondensed-Regular.otd
	ttx -t 'head' -o RobotoCondensed-Regular.ttx lcg/RobotoCondensed-Regular.ttf
	ttx -m out/RobotoCondensed-Regular.ttf -o out/RobotoCondensed-Regular.ttf RobotoCondensed-Regular.ttx
	rm RobotoCondensed-Regular.ttx
out/RobotoCondensed-Regular.otd: lcg/RobotoCondensed-Regular.ttf
	otfccdump lcg/RobotoCondensed-Regular.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Regular.otd
out/NotoSansCJKscCondensed-Regular.otd: cjk/unkerned/NotoSansCJKscCondensed-Regular.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-Regular.ttf -o out/NotoSansCJKscCondensed-Regular.otd
out/RobotoCondensed-Medium.ttf: out/RobotoCondensed-Medium.otd out/NotoSansCJKscCondensed-Medium.otd
	python 6-merge.py out/RobotoCondensed-Medium.otd out/NotoSansCJKscCondensed-Medium.otd
	otfccbuild out/RobotoCondensed-Medium.otd -O3 -o out/RobotoCondensed-Medium.ttf
	rm out/RobotoCondensed-Medium.otd out/NotoSansCJKscCondensed-Medium.otd
	ttx -t 'head' -o RobotoCondensed-Medium.ttx lcg/RobotoCondensed-Medium.ttf
	ttx -m out/RobotoCondensed-Medium.ttf -o out/RobotoCondensed-Medium.ttf RobotoCondensed-Medium.ttx
	rm RobotoCondensed-Medium.ttx
out/RobotoCondensed-Medium.otd: lcg/RobotoCondensed-Medium.ttf
	otfccdump lcg/RobotoCondensed-Medium.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Medium.otd
out/NotoSansCJKscCondensed-Medium.otd: cjk/unkerned/NotoSansCJKscCondensed-Medium.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-Medium.ttf -o out/NotoSansCJKscCondensed-Medium.otd
out/RobotoCondensed-Bold.ttf: out/RobotoCondensed-Bold.otd out/NotoSansCJKscCondensed-Bold.otd
	python 6-merge.py out/RobotoCondensed-Bold.otd out/NotoSansCJKscCondensed-Bold.otd
	otfccbuild out/RobotoCondensed-Bold.otd -O3 -o out/RobotoCondensed-Bold.ttf
	rm out/RobotoCondensed-Bold.otd out/NotoSansCJKscCondensed-Bold.otd
	ttx -t 'head' -o RobotoCondensed-Bold.ttx lcg/RobotoCondensed-Bold.ttf
	ttx -m out/RobotoCondensed-Bold.ttf -o out/RobotoCondensed-Bold.ttf RobotoCondensed-Bold.ttx
	rm RobotoCondensed-Bold.ttx
out/RobotoCondensed-Bold.otd: lcg/RobotoCondensed-Bold.ttf
	otfccdump lcg/RobotoCondensed-Bold.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Bold.otd
out/NotoSansCJKscCondensed-Bold.otd: cjk/unkerned/NotoSansCJKscCondensed-Bold.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-Bold.ttf -o out/NotoSansCJKscCondensed-Bold.otd
out/RobotoCondensed-LightItalic.ttf: out/RobotoCondensed-LightItalic.otd out/NotoSansCJKscCondensed-LightItalic.otd
	python 6-merge.py out/RobotoCondensed-LightItalic.otd out/NotoSansCJKscCondensed-LightItalic.otd
	otfccbuild out/RobotoCondensed-LightItalic.otd -O3 -o out/RobotoCondensed-LightItalic.ttf
	rm out/RobotoCondensed-LightItalic.otd out/NotoSansCJKscCondensed-LightItalic.otd
	ttx -t 'head' -o RobotoCondensed-LightItalic.ttx lcg/RobotoCondensed-LightItalic.ttf
	ttx -m out/RobotoCondensed-LightItalic.ttf -o out/RobotoCondensed-LightItalic.ttf RobotoCondensed-LightItalic.ttx
	rm RobotoCondensed-LightItalic.ttx
out/RobotoCondensed-LightItalic.otd: lcg/RobotoCondensed-LightItalic.ttf
	otfccdump lcg/RobotoCondensed-LightItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-LightItalic.otd
out/NotoSansCJKscCondensed-LightItalic.otd: cjk/unkerned/NotoSansCJKscCondensed-LightItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-LightItalic.ttf -o out/NotoSansCJKscCondensed-LightItalic.otd
out/RobotoCondensed-Italic.ttf: out/RobotoCondensed-Italic.otd out/NotoSansCJKscCondensed-Italic.otd
	python 6-merge.py out/RobotoCondensed-Italic.otd out/NotoSansCJKscCondensed-Italic.otd
	otfccbuild out/RobotoCondensed-Italic.otd -O3 -o out/RobotoCondensed-Italic.ttf
	rm out/RobotoCondensed-Italic.otd out/NotoSansCJKscCondensed-Italic.otd
	ttx -t 'head' -o RobotoCondensed-Italic.ttx lcg/RobotoCondensed-Italic.ttf
	ttx -m out/RobotoCondensed-Italic.ttf -o out/RobotoCondensed-Italic.ttf RobotoCondensed-Italic.ttx
	rm RobotoCondensed-Italic.ttx
out/RobotoCondensed-Italic.otd: lcg/RobotoCondensed-Italic.ttf
	otfccdump lcg/RobotoCondensed-Italic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Italic.otd
out/NotoSansCJKscCondensed-Italic.otd: cjk/unkerned/NotoSansCJKscCondensed-Italic.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-Italic.ttf -o out/NotoSansCJKscCondensed-Italic.otd
out/RobotoCondensed-MediumItalic.ttf: out/RobotoCondensed-MediumItalic.otd out/NotoSansCJKscCondensed-MediumItalic.otd
	python 6-merge.py out/RobotoCondensed-MediumItalic.otd out/NotoSansCJKscCondensed-MediumItalic.otd
	otfccbuild out/RobotoCondensed-MediumItalic.otd -O3 -o out/RobotoCondensed-MediumItalic.ttf
	rm out/RobotoCondensed-MediumItalic.otd out/NotoSansCJKscCondensed-MediumItalic.otd
	ttx -t 'head' -o RobotoCondensed-MediumItalic.ttx lcg/RobotoCondensed-MediumItalic.ttf
	ttx -m out/RobotoCondensed-MediumItalic.ttf -o out/RobotoCondensed-MediumItalic.ttf RobotoCondensed-MediumItalic.ttx
	rm RobotoCondensed-MediumItalic.ttx
out/RobotoCondensed-MediumItalic.otd: lcg/RobotoCondensed-MediumItalic.ttf
	otfccdump lcg/RobotoCondensed-MediumItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-MediumItalic.otd
out/NotoSansCJKscCondensed-MediumItalic.otd: cjk/unkerned/NotoSansCJKscCondensed-MediumItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-MediumItalic.ttf -o out/NotoSansCJKscCondensed-MediumItalic.otd
out/RobotoCondensed-BoldItalic.ttf: out/RobotoCondensed-BoldItalic.otd out/NotoSansCJKscCondensed-BoldItalic.otd
	python 6-merge.py out/RobotoCondensed-BoldItalic.otd out/NotoSansCJKscCondensed-BoldItalic.otd
	otfccbuild out/RobotoCondensed-BoldItalic.otd -O3 -o out/RobotoCondensed-BoldItalic.ttf
	rm out/RobotoCondensed-BoldItalic.otd out/NotoSansCJKscCondensed-BoldItalic.otd
	ttx -t 'head' -o RobotoCondensed-BoldItalic.ttx lcg/RobotoCondensed-BoldItalic.ttf
	ttx -m out/RobotoCondensed-BoldItalic.ttf -o out/RobotoCondensed-BoldItalic.ttf RobotoCondensed-BoldItalic.ttx
	rm RobotoCondensed-BoldItalic.ttx
out/RobotoCondensed-BoldItalic.otd: lcg/RobotoCondensed-BoldItalic.ttf
	otfccdump lcg/RobotoCondensed-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-BoldItalic.otd
out/NotoSansCJKscCondensed-BoldItalic.otd: cjk/unkerned/NotoSansCJKscCondensed-BoldItalic.ttf
	otfccdump cjk/unkerned/NotoSansCJKscCondensed-BoldItalic.ttf -o out/NotoSansCJKscCondensed-BoldItalic.otd
out/NotoSerif-Regular.ttf: out/NotoSerif-Regular.otd out/NotoSerifCJKsc-Regular.otd
	python 6-merge.py out/NotoSerif-Regular.otd out/NotoSerifCJKsc-Regular.otd
	otfccbuild out/NotoSerif-Regular.otd -O3 -o out/NotoSerif-Regular.ttf
	rm out/NotoSerif-Regular.otd out/NotoSerifCJKsc-Regular.otd
	ttx -t 'head' -o NotoSerif-Regular.ttx lcg/NotoSerif-Regular.ttf
	ttx -m out/NotoSerif-Regular.ttf -o out/NotoSerif-Regular.ttf NotoSerif-Regular.ttx
	rm NotoSerif-Regular.ttx
out/NotoSerif-Regular.otd: lcg/NotoSerif-Regular.ttf
	otfccdump lcg/NotoSerif-Regular.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Regular.otd
out/NotoSerifCJKsc-Regular.otd: cjk/unkerned/NotoSerifCJKsc-Regular.ttf
	otfccdump cjk/unkerned/NotoSerifCJKsc-Regular.ttf -o out/NotoSerifCJKsc-Regular.otd
out/NotoSerif-Bold.ttf: out/NotoSerif-Bold.otd out/NotoSerifCJKsc-Bold.otd
	python 6-merge.py out/NotoSerif-Bold.otd out/NotoSerifCJKsc-Bold.otd
	otfccbuild out/NotoSerif-Bold.otd -O3 -o out/NotoSerif-Bold.ttf
	rm out/NotoSerif-Bold.otd out/NotoSerifCJKsc-Bold.otd
	ttx -t 'head' -o NotoSerif-Bold.ttx lcg/NotoSerif-Bold.ttf
	ttx -m out/NotoSerif-Bold.ttf -o out/NotoSerif-Bold.ttf NotoSerif-Bold.ttx
	rm NotoSerif-Bold.ttx
out/NotoSerif-Bold.otd: lcg/NotoSerif-Bold.ttf
	otfccdump lcg/NotoSerif-Bold.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Bold.otd
out/NotoSerifCJKsc-Bold.otd: cjk/unkerned/NotoSerifCJKsc-Bold.ttf
	otfccdump cjk/unkerned/NotoSerifCJKsc-Bold.ttf -o out/NotoSerifCJKsc-Bold.otd
out/NotoSerif-Italic.ttf: out/NotoSerif-Italic.otd out/NotoSerifCJKsc-Italic.otd
	python 6-merge.py out/NotoSerif-Italic.otd out/NotoSerifCJKsc-Italic.otd
	otfccbuild out/NotoSerif-Italic.otd -O3 -o out/NotoSerif-Italic.ttf
	rm out/NotoSerif-Italic.otd out/NotoSerifCJKsc-Italic.otd
	ttx -t 'head' -o NotoSerif-Italic.ttx lcg/NotoSerif-Italic.ttf
	ttx -m out/NotoSerif-Italic.ttf -o out/NotoSerif-Italic.ttf NotoSerif-Italic.ttx
	rm NotoSerif-Italic.ttx
out/NotoSerif-Italic.otd: lcg/NotoSerif-Italic.ttf
	otfccdump lcg/NotoSerif-Italic.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Italic.otd
out/NotoSerifCJKsc-Italic.otd: cjk/unkerned/NotoSerifCJKsc-Italic.ttf
	otfccdump cjk/unkerned/NotoSerifCJKsc-Italic.ttf -o out/NotoSerifCJKsc-Italic.otd
out/NotoSerif-BoldItalic.ttf: out/NotoSerif-BoldItalic.otd out/NotoSerifCJKsc-BoldItalic.otd
	python 6-merge.py out/NotoSerif-BoldItalic.otd out/NotoSerifCJKsc-BoldItalic.otd
	otfccbuild out/NotoSerif-BoldItalic.otd -O3 -o out/NotoSerif-BoldItalic.ttf
	rm out/NotoSerif-BoldItalic.otd out/NotoSerifCJKsc-BoldItalic.otd
	ttx -t 'head' -o NotoSerif-BoldItalic.ttx lcg/NotoSerif-BoldItalic.ttf
	ttx -m out/NotoSerif-BoldItalic.ttf -o out/NotoSerif-BoldItalic.ttf NotoSerif-BoldItalic.ttx
	rm NotoSerif-BoldItalic.ttx
out/NotoSerif-BoldItalic.otd: lcg/NotoSerif-BoldItalic.ttf
	otfccdump lcg/NotoSerif-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-BoldItalic.otd
out/NotoSerifCJKsc-BoldItalic.otd: cjk/unkerned/NotoSerifCJKsc-BoldItalic.ttf
	otfccdump cjk/unkerned/NotoSerifCJKsc-BoldItalic.ttf -o out/NotoSerifCJKsc-BoldItalic.otd
lcg/Roboto-Thin.ttf: src/Roboto-Thin.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Thin.ttf
lcg/Roboto-Light.ttf: src/Roboto-Light.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Light.ttf
lcg/Roboto-Regular.ttf: src/Roboto-Regular.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Regular.ttf
lcg/Roboto-Medium.ttf: src/Roboto-Medium.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Medium.ttf
lcg/Roboto-Bold.ttf: src/Roboto-Bold.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Bold.ttf
lcg/Roboto-Black.ttf: src/Roboto-Black.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Black.ttf
lcg/Roboto-ThinItalic.ttf: src/Roboto-ThinItalic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-ThinItalic.ttf
lcg/Roboto-LightItalic.ttf: src/Roboto-LightItalic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-LightItalic.ttf
lcg/Roboto-Italic.ttf: src/Roboto-Italic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-Italic.ttf
lcg/Roboto-MediumItalic.ttf: src/Roboto-MediumItalic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-MediumItalic.ttf
lcg/Roboto-BoldItalic.ttf: src/Roboto-BoldItalic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-BoldItalic.ttf
lcg/Roboto-BlackItalic.ttf: src/Roboto-BlackItalic.ttf
	fontforge -script 5-lcg-upm.pe Roboto-BlackItalic.ttf
lcg/RobotoCondensed-Light.ttf: src/RobotoCondensed-Light.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-Light.ttf
lcg/RobotoCondensed-Regular.ttf: src/RobotoCondensed-Regular.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-Regular.ttf
lcg/RobotoCondensed-Medium.ttf: src/RobotoCondensed-Medium.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-Medium.ttf
lcg/RobotoCondensed-Bold.ttf: src/RobotoCondensed-Bold.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-Bold.ttf
lcg/RobotoCondensed-LightItalic.ttf: src/RobotoCondensed-LightItalic.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-LightItalic.ttf
lcg/RobotoCondensed-Italic.ttf: src/RobotoCondensed-Italic.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-Italic.ttf
lcg/RobotoCondensed-MediumItalic.ttf: src/RobotoCondensed-MediumItalic.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-MediumItalic.ttf
lcg/RobotoCondensed-BoldItalic.ttf: src/RobotoCondensed-BoldItalic.ttf
	fontforge -script 5-lcg-upm.pe RobotoCondensed-BoldItalic.ttf
lcg/NotoSerif-Regular.ttf: src/NotoSerif-Regular.ttf
	cp src/NotoSerif-Regular.ttf lcg/NotoSerif-Regular.ttf
lcg/NotoSerif-Bold.ttf: src/NotoSerif-Bold.ttf
	cp src/NotoSerif-Bold.ttf lcg/NotoSerif-Bold.ttf
lcg/NotoSerif-Italic.ttf: src/NotoSerif-Italic.ttf
	cp src/NotoSerif-Italic.ttf lcg/NotoSerif-Italic.ttf
lcg/NotoSerif-BoldItalic.ttf: src/NotoSerif-BoldItalic.ttf
	cp src/NotoSerif-BoldItalic.ttf lcg/NotoSerif-BoldItalic.ttf
cjk/unkerned/NotoSansCJKsc-ThinItalic.ttf: cjk/unkerned/NotoSansCJKsc-Thin.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Thin.ttf NotoSansCJKsc-ThinItalic.ttf 17.33
cjk/unkerned/NotoSansCJKsc-LightItalic.ttf: cjk/unkerned/NotoSansCJKsc-Light.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Light.ttf NotoSansCJKsc-LightItalic.ttf 17.33
cjk/unkerned/NotoSansCJKsc-Italic.ttf: cjk/unkerned/NotoSansCJKsc-Regular.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Regular.ttf NotoSansCJKsc-Italic.ttf 17.33
cjk/unkerned/NotoSansCJKsc-MediumItalic.ttf: cjk/unkerned/NotoSansCJKsc-Medium.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Medium.ttf NotoSansCJKsc-MediumItalic.ttf 17.33
cjk/unkerned/NotoSansCJKsc-BoldItalic.ttf: cjk/unkerned/NotoSansCJKsc-Bold.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Bold.ttf NotoSansCJKsc-BoldItalic.ttf 17.33
cjk/unkerned/NotoSansCJKsc-BlackItalic.ttf: cjk/unkerned/NotoSansCJKsc-Black.ttf
	fontforge -script 4-italize.pe NotoSansCJKsc-Black.ttf NotoSansCJKsc-BlackItalic.ttf 17.33
cjk/unkerned/NotoSansCJKscCondensed-LightItalic.ttf: cjk/unkerned/NotoSansCJKscCondensed-Light.ttf
	fontforge -script 4-italize.pe NotoSansCJKscCondensed-Light.ttf NotoSansCJKscCondensed-LightItalic.ttf 17.33
cjk/unkerned/NotoSansCJKscCondensed-Italic.ttf: cjk/unkerned/NotoSansCJKscCondensed-Regular.ttf
	fontforge -script 4-italize.pe NotoSansCJKscCondensed-Regular.ttf NotoSansCJKscCondensed-Italic.ttf 17.33
cjk/unkerned/NotoSansCJKscCondensed-MediumItalic.ttf: cjk/unkerned/NotoSansCJKscCondensed-Medium.ttf
	fontforge -script 4-italize.pe NotoSansCJKscCondensed-Medium.ttf NotoSansCJKscCondensed-MediumItalic.ttf 17.33
cjk/unkerned/NotoSansCJKscCondensed-BoldItalic.ttf: cjk/unkerned/NotoSansCJKscCondensed-Bold.ttf
	fontforge -script 4-italize.pe NotoSansCJKscCondensed-Bold.ttf NotoSansCJKscCondensed-BoldItalic.ttf 17.33
cjk/unkerned/NotoSerifCJKsc-Italic.ttf: cjk/unkerned/NotoSerifCJKsc-Regular.ttf
	fontforge -script 4-italize.pe NotoSerifCJKsc-Regular.ttf NotoSerifCJKsc-Italic.ttf 21.25
cjk/unkerned/NotoSerifCJKsc-BoldItalic.ttf: cjk/unkerned/NotoSerifCJKsc-Bold.ttf
	fontforge -script 4-italize.pe NotoSerifCJKsc-Bold.ttf NotoSerifCJKsc-BoldItalic.ttf 21.25
cjk/unkerned/NotoSansCJKscCondensed-Light.ttf: cjk/unkerned/NotoSansCJKsc-Light.ttf
	fontforge -script 3-condense.pe NotoSansCJKsc-Light.ttf NotoSansCJKscCondensed-Light.ttf
cjk/unkerned/NotoSansCJKscCondensed-Regular.ttf: cjk/unkerned/NotoSansCJKsc-Regular.ttf
	fontforge -script 3-condense.pe NotoSansCJKsc-Regular.ttf NotoSansCJKscCondensed-Regular.ttf
cjk/unkerned/NotoSansCJKscCondensed-Medium.ttf: cjk/unkerned/NotoSansCJKsc-Medium.ttf
	fontforge -script 3-condense.pe NotoSansCJKsc-Medium.ttf NotoSansCJKscCondensed-Medium.ttf
cjk/unkerned/NotoSansCJKscCondensed-Bold.ttf: cjk/unkerned/NotoSansCJKsc-Bold.ttf
	fontforge -script 3-condense.pe NotoSansCJKsc-Bold.ttf NotoSansCJKscCondensed-Bold.ttf
cjk/unkerned/NotoSansCJKsc-Thin.ttf: cjk/NotoSansCJKsc-Thin.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Thin.ttf
cjk/unkerned/NotoSansCJKsc-Light.ttf: cjk/NotoSansCJKsc-Light.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Light.ttf
cjk/unkerned/NotoSansCJKsc-Regular.ttf: cjk/NotoSansCJKsc-Regular.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Regular.ttf
cjk/unkerned/NotoSansCJKsc-Medium.ttf: cjk/NotoSansCJKsc-Medium.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Medium.ttf
cjk/unkerned/NotoSansCJKsc-Bold.ttf: cjk/NotoSansCJKsc-Bold.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Bold.ttf
cjk/unkerned/NotoSansCJKsc-Black.ttf: cjk/NotoSansCJKsc-Black.ttf
	fontforge -script 2-cjk-unkern.pe NotoSansCJKsc-Black.ttf
cjk/unkerned/NotoSerifCJKsc-Regular.ttf: cjk/NotoSerifCJKsc-Regular.ttf
	fontforge -script 2-cjk-unkern.pe NotoSerifCJKsc-Regular.ttf
cjk/unkerned/NotoSerifCJKsc-Bold.ttf: cjk/NotoSerifCJKsc-Bold.ttf
	fontforge -script 2-cjk-unkern.pe NotoSerifCJKsc-Bold.ttf
cjk/NotoSansCJKjp-Thin.ttf: src/NotoSansCJKjp-Thin.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Thin.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Thin.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Thin.ttf 2>/dev/null
cjk/NotoSansCJKjp-Light.ttf: src/NotoSansCJKjp-Light.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Light.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Light.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Light.ttf 2>/dev/null
cjk/NotoSansCJKjp-Regular.ttf: src/NotoSansCJKjp-Regular.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Regular.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Regular.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Regular.ttf 2>/dev/null
cjk/NotoSansCJKjp-Medium.ttf: src/NotoSansCJKjp-Medium.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Medium.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Medium.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Medium.ttf 2>/dev/null
cjk/NotoSansCJKjp-Bold.ttf: src/NotoSansCJKjp-Bold.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Bold.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Bold.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Bold.ttf 2>/dev/null
cjk/NotoSansCJKjp-Black.ttf: src/NotoSansCJKjp-Black.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKjp-Black.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKjp-Black.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKjp-Black.ttf 2>/dev/null
cjk/NotoSansCJKkr-Thin.ttf: src/NotoSansCJKkr-Thin.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Thin.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Thin.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Thin.ttf 2>/dev/null
cjk/NotoSansCJKkr-Light.ttf: src/NotoSansCJKkr-Light.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Light.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Light.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Light.ttf 2>/dev/null
cjk/NotoSansCJKkr-Regular.ttf: src/NotoSansCJKkr-Regular.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Regular.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Regular.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Regular.ttf 2>/dev/null
cjk/NotoSansCJKkr-Medium.ttf: src/NotoSansCJKkr-Medium.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Medium.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Medium.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Medium.ttf 2>/dev/null
cjk/NotoSansCJKkr-Bold.ttf: src/NotoSansCJKkr-Bold.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Bold.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Bold.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Bold.ttf 2>/dev/null
cjk/NotoSansCJKkr-Black.ttf: src/NotoSansCJKkr-Black.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKkr-Black.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKkr-Black.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKkr-Black.ttf 2>/dev/null
cjk/NotoSansCJKsc-Thin.ttf: src/NotoSansCJKsc-Thin.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Thin.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Thin.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Thin.ttf 2>/dev/null
cjk/NotoSansCJKsc-Light.ttf: src/NotoSansCJKsc-Light.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Light.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Light.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Light.ttf 2>/dev/null
cjk/NotoSansCJKsc-Regular.ttf: src/NotoSansCJKsc-Regular.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Regular.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Regular.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Regular.ttf 2>/dev/null
cjk/NotoSansCJKsc-Medium.ttf: src/NotoSansCJKsc-Medium.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Medium.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Medium.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Medium.ttf 2>/dev/null
cjk/NotoSansCJKsc-Bold.ttf: src/NotoSansCJKsc-Bold.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Bold.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Bold.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Bold.ttf 2>/dev/null
cjk/NotoSansCJKsc-Black.ttf: src/NotoSansCJKsc-Black.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKsc-Black.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKsc-Black.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKsc-Black.ttf 2>/dev/null
cjk/NotoSansCJKtc-Thin.ttf: src/NotoSansCJKtc-Thin.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Thin.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Thin.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Thin.ttf 2>/dev/null
cjk/NotoSansCJKtc-Light.ttf: src/NotoSansCJKtc-Light.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Light.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Light.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Light.ttf 2>/dev/null
cjk/NotoSansCJKtc-Regular.ttf: src/NotoSansCJKtc-Regular.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Regular.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Regular.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Regular.ttf 2>/dev/null
cjk/NotoSansCJKtc-Medium.ttf: src/NotoSansCJKtc-Medium.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Medium.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Medium.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Medium.ttf 2>/dev/null
cjk/NotoSansCJKtc-Bold.ttf: src/NotoSansCJKtc-Bold.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Bold.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Bold.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Bold.ttf 2>/dev/null
cjk/NotoSansCJKtc-Black.ttf: src/NotoSansCJKtc-Black.otf
	otfccdump.exe --ignore-hints src/NotoSansCJKtc-Black.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSansCJKtc-Black.ttf
	fontforge -script 2-cjk-subset.pe NotoSansCJKtc-Black.ttf 2>/dev/null
cjk/NotoSerifCJKsc-Regular.ttf: src/NotoSerifCJKsc-Regular.otf
	otfccdump.exe --ignore-hints src/NotoSerifCJKsc-Regular.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSerifCJKsc-Regular.ttf
	fontforge -script 2-cjk-subset.pe NotoSerifCJKsc-Regular.ttf 2>/dev/null
cjk/NotoSerifCJKsc-Bold.ttf: src/NotoSerifCJKsc-Bold.otf
	otfccdump.exe --ignore-hints src/NotoSerifCJKsc-Bold.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/NotoSerifCJKsc-Bold.ttf
	fontforge -script 2-cjk-subset.pe NotoSerifCJKsc-Bold.ttf 2>/dev/null
