.PHONY: all clean mkdir

all: out/Roboto-Thin.ttf out/Roboto-Light.ttf out/Roboto-Regular.ttf out/Roboto-Medium.ttf out/Roboto-Bold.ttf out/Roboto-Black.ttf out/Roboto-ThinItalic.ttf out/Roboto-LightItalic.ttf out/Roboto-Italic.ttf out/Roboto-MediumItalic.ttf out/Roboto-BoldItalic.ttf out/Roboto-BlackItalic.ttf out/RobotoCondensed-Light.ttf out/RobotoCondensed-Regular.ttf out/RobotoCondensed-Medium.ttf out/RobotoCondensed-Bold.ttf out/RobotoCondensed-LightItalic.ttf out/RobotoCondensed-Italic.ttf out/RobotoCondensed-MediumItalic.ttf out/RobotoCondensed-BoldItalic.ttf out/NotoSerif-Regular.ttf out/NotoSerif-Bold.ttf out/NotoSerif-Italic.ttf out/NotoSerif-BoldItalic.ttf

clean:
	-rm -r cjk/
	-rm out/*.otd

out/Roboto-Thin.ttf: out/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd
	python merge.py out/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd
	otfccbuild out/Roboto-Thin.otd -O3 -o out/Roboto-Thin.ttf
	ttx -t 'head' -o Roboto-Thin.ttx src/Roboto-Thin.ttf
	ttx -m out/Roboto-Thin.ttf -o out/Roboto-Thin.ttf Roboto-Thin.ttx
	rm Roboto-Thin.ttx
out/Roboto-Thin.otd: src/Roboto-Thin.ttf
	mkdir -p out/
	otfccdump src/Roboto-Thin.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Thin.otd
out/Roboto-Light.ttf: out/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd
	python merge.py out/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd
	otfccbuild out/Roboto-Light.otd -O3 -o out/Roboto-Light.ttf
	ttx -t 'head' -o Roboto-Light.ttx src/Roboto-Light.ttf
	ttx -m out/Roboto-Light.ttf -o out/Roboto-Light.ttf Roboto-Light.ttx
	rm Roboto-Light.ttx
out/Roboto-Light.otd: src/Roboto-Light.ttf
	mkdir -p out/
	otfccdump src/Roboto-Light.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Light.otd
out/Roboto-Regular.ttf: out/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd
	python merge.py out/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd
	otfccbuild out/Roboto-Regular.otd -O3 -o out/Roboto-Regular.ttf
	ttx -t 'head' -o Roboto-Regular.ttx src/Roboto-Regular.ttf
	ttx -m out/Roboto-Regular.ttf -o out/Roboto-Regular.ttf Roboto-Regular.ttx
	rm Roboto-Regular.ttx
out/Roboto-Regular.otd: src/Roboto-Regular.ttf
	mkdir -p out/
	otfccdump src/Roboto-Regular.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Regular.otd
out/Roboto-Medium.ttf: out/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd
	python merge.py out/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd
	otfccbuild out/Roboto-Medium.otd -O3 -o out/Roboto-Medium.ttf
	ttx -t 'head' -o Roboto-Medium.ttx src/Roboto-Medium.ttf
	ttx -m out/Roboto-Medium.ttf -o out/Roboto-Medium.ttf Roboto-Medium.ttx
	rm Roboto-Medium.ttx
out/Roboto-Medium.otd: src/Roboto-Medium.ttf
	mkdir -p out/
	otfccdump src/Roboto-Medium.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Medium.otd
out/Roboto-Bold.ttf: out/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd
	python merge.py out/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd
	otfccbuild out/Roboto-Bold.otd -O3 -o out/Roboto-Bold.ttf
	ttx -t 'head' -o Roboto-Bold.ttx src/Roboto-Bold.ttf
	ttx -m out/Roboto-Bold.ttf -o out/Roboto-Bold.ttf Roboto-Bold.ttx
	rm Roboto-Bold.ttx
out/Roboto-Bold.otd: src/Roboto-Bold.ttf
	mkdir -p out/
	otfccdump src/Roboto-Bold.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Bold.otd
out/Roboto-Black.ttf: out/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd
	python merge.py out/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd
	otfccbuild out/Roboto-Black.otd -O3 -o out/Roboto-Black.ttf
	ttx -t 'head' -o Roboto-Black.ttx src/Roboto-Black.ttf
	ttx -m out/Roboto-Black.ttf -o out/Roboto-Black.ttf Roboto-Black.ttx
	rm Roboto-Black.ttx
out/Roboto-Black.otd: src/Roboto-Black.ttf
	mkdir -p out/
	otfccdump src/Roboto-Black.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Black.otd
out/Roboto-ThinItalic.ttf: out/Roboto-ThinItalic.otd cjk/NotoSansCJKsc-ThinItalic.otd
	python merge.py out/Roboto-ThinItalic.otd cjk/NotoSansCJKsc-ThinItalic.otd
	otfccbuild out/Roboto-ThinItalic.otd -O3 -o out/Roboto-ThinItalic.ttf
	ttx -t 'head' -o Roboto-ThinItalic.ttx src/Roboto-ThinItalic.ttf
	ttx -m out/Roboto-ThinItalic.ttf -o out/Roboto-ThinItalic.ttf Roboto-ThinItalic.ttx
	rm Roboto-ThinItalic.ttx
out/Roboto-ThinItalic.otd: src/Roboto-ThinItalic.ttf
	mkdir -p out/
	otfccdump src/Roboto-ThinItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-ThinItalic.otd
out/Roboto-LightItalic.ttf: out/Roboto-LightItalic.otd cjk/NotoSansCJKsc-LightItalic.otd
	python merge.py out/Roboto-LightItalic.otd cjk/NotoSansCJKsc-LightItalic.otd
	otfccbuild out/Roboto-LightItalic.otd -O3 -o out/Roboto-LightItalic.ttf
	ttx -t 'head' -o Roboto-LightItalic.ttx src/Roboto-LightItalic.ttf
	ttx -m out/Roboto-LightItalic.ttf -o out/Roboto-LightItalic.ttf Roboto-LightItalic.ttx
	rm Roboto-LightItalic.ttx
out/Roboto-LightItalic.otd: src/Roboto-LightItalic.ttf
	mkdir -p out/
	otfccdump src/Roboto-LightItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-LightItalic.otd
out/Roboto-Italic.ttf: out/Roboto-Italic.otd cjk/NotoSansCJKsc-Italic.otd
	python merge.py out/Roboto-Italic.otd cjk/NotoSansCJKsc-Italic.otd
	otfccbuild out/Roboto-Italic.otd -O3 -o out/Roboto-Italic.ttf
	ttx -t 'head' -o Roboto-Italic.ttx src/Roboto-Italic.ttf
	ttx -m out/Roboto-Italic.ttf -o out/Roboto-Italic.ttf Roboto-Italic.ttx
	rm Roboto-Italic.ttx
out/Roboto-Italic.otd: src/Roboto-Italic.ttf
	mkdir -p out/
	otfccdump src/Roboto-Italic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Italic.otd
out/Roboto-MediumItalic.ttf: out/Roboto-MediumItalic.otd cjk/NotoSansCJKsc-MediumItalic.otd
	python merge.py out/Roboto-MediumItalic.otd cjk/NotoSansCJKsc-MediumItalic.otd
	otfccbuild out/Roboto-MediumItalic.otd -O3 -o out/Roboto-MediumItalic.ttf
	ttx -t 'head' -o Roboto-MediumItalic.ttx src/Roboto-MediumItalic.ttf
	ttx -m out/Roboto-MediumItalic.ttf -o out/Roboto-MediumItalic.ttf Roboto-MediumItalic.ttx
	rm Roboto-MediumItalic.ttx
out/Roboto-MediumItalic.otd: src/Roboto-MediumItalic.ttf
	mkdir -p out/
	otfccdump src/Roboto-MediumItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-MediumItalic.otd
out/Roboto-BoldItalic.ttf: out/Roboto-BoldItalic.otd cjk/NotoSansCJKsc-BoldItalic.otd
	python merge.py out/Roboto-BoldItalic.otd cjk/NotoSansCJKsc-BoldItalic.otd
	otfccbuild out/Roboto-BoldItalic.otd -O3 -o out/Roboto-BoldItalic.ttf
	ttx -t 'head' -o Roboto-BoldItalic.ttx src/Roboto-BoldItalic.ttf
	ttx -m out/Roboto-BoldItalic.ttf -o out/Roboto-BoldItalic.ttf Roboto-BoldItalic.ttx
	rm Roboto-BoldItalic.ttx
out/Roboto-BoldItalic.otd: src/Roboto-BoldItalic.ttf
	mkdir -p out/
	otfccdump src/Roboto-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BoldItalic.otd
out/Roboto-BlackItalic.ttf: out/Roboto-BlackItalic.otd cjk/NotoSansCJKsc-BlackItalic.otd
	python merge.py out/Roboto-BlackItalic.otd cjk/NotoSansCJKsc-BlackItalic.otd
	otfccbuild out/Roboto-BlackItalic.otd -O3 -o out/Roboto-BlackItalic.ttf
	ttx -t 'head' -o Roboto-BlackItalic.ttx src/Roboto-BlackItalic.ttf
	ttx -m out/Roboto-BlackItalic.ttf -o out/Roboto-BlackItalic.ttf Roboto-BlackItalic.ttx
	rm Roboto-BlackItalic.ttx
out/Roboto-BlackItalic.otd: src/Roboto-BlackItalic.ttf
	mkdir -p out/
	otfccdump src/Roboto-BlackItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BlackItalic.otd
out/RobotoCondensed-Light.ttf: out/RobotoCondensed-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
	python merge.py out/RobotoCondensed-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
	otfccbuild out/RobotoCondensed-Light.otd -O3 -o out/RobotoCondensed-Light.ttf
	ttx -t 'head' -o RobotoCondensed-Light.ttx src/RobotoCondensed-Light.ttf
	ttx -m out/RobotoCondensed-Light.ttf -o out/RobotoCondensed-Light.ttf RobotoCondensed-Light.ttx
	rm RobotoCondensed-Light.ttx
out/RobotoCondensed-Light.otd: src/RobotoCondensed-Light.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-Light.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Light.otd
out/RobotoCondensed-Regular.ttf: out/RobotoCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
	python merge.py out/RobotoCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
	otfccbuild out/RobotoCondensed-Regular.otd -O3 -o out/RobotoCondensed-Regular.ttf
	ttx -t 'head' -o RobotoCondensed-Regular.ttx src/RobotoCondensed-Regular.ttf
	ttx -m out/RobotoCondensed-Regular.ttf -o out/RobotoCondensed-Regular.ttf RobotoCondensed-Regular.ttx
	rm RobotoCondensed-Regular.ttx
out/RobotoCondensed-Regular.otd: src/RobotoCondensed-Regular.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-Regular.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Regular.otd
out/RobotoCondensed-Medium.ttf: out/RobotoCondensed-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
	python merge.py out/RobotoCondensed-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
	otfccbuild out/RobotoCondensed-Medium.otd -O3 -o out/RobotoCondensed-Medium.ttf
	ttx -t 'head' -o RobotoCondensed-Medium.ttx src/RobotoCondensed-Medium.ttf
	ttx -m out/RobotoCondensed-Medium.ttf -o out/RobotoCondensed-Medium.ttf RobotoCondensed-Medium.ttx
	rm RobotoCondensed-Medium.ttx
out/RobotoCondensed-Medium.otd: src/RobotoCondensed-Medium.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-Medium.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Medium.otd
out/RobotoCondensed-Bold.ttf: out/RobotoCondensed-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
	python merge.py out/RobotoCondensed-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
	otfccbuild out/RobotoCondensed-Bold.otd -O3 -o out/RobotoCondensed-Bold.ttf
	ttx -t 'head' -o RobotoCondensed-Bold.ttx src/RobotoCondensed-Bold.ttf
	ttx -m out/RobotoCondensed-Bold.ttf -o out/RobotoCondensed-Bold.ttf RobotoCondensed-Bold.ttx
	rm RobotoCondensed-Bold.ttx
out/RobotoCondensed-Bold.otd: src/RobotoCondensed-Bold.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-Bold.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Bold.otd
out/RobotoCondensed-LightItalic.ttf: out/RobotoCondensed-LightItalic.otd cjk/NotoSansCJKscCondensed-LightItalic.otd
	python merge.py out/RobotoCondensed-LightItalic.otd cjk/NotoSansCJKscCondensed-LightItalic.otd
	otfccbuild out/RobotoCondensed-LightItalic.otd -O3 -o out/RobotoCondensed-LightItalic.ttf
	ttx -t 'head' -o RobotoCondensed-LightItalic.ttx src/RobotoCondensed-LightItalic.ttf
	ttx -m out/RobotoCondensed-LightItalic.ttf -o out/RobotoCondensed-LightItalic.ttf RobotoCondensed-LightItalic.ttx
	rm RobotoCondensed-LightItalic.ttx
out/RobotoCondensed-LightItalic.otd: src/RobotoCondensed-LightItalic.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-LightItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-LightItalic.otd
out/RobotoCondensed-Italic.ttf: out/RobotoCondensed-Italic.otd cjk/NotoSansCJKscCondensed-Italic.otd
	python merge.py out/RobotoCondensed-Italic.otd cjk/NotoSansCJKscCondensed-Italic.otd
	otfccbuild out/RobotoCondensed-Italic.otd -O3 -o out/RobotoCondensed-Italic.ttf
	ttx -t 'head' -o RobotoCondensed-Italic.ttx src/RobotoCondensed-Italic.ttf
	ttx -m out/RobotoCondensed-Italic.ttf -o out/RobotoCondensed-Italic.ttf RobotoCondensed-Italic.ttx
	rm RobotoCondensed-Italic.ttx
out/RobotoCondensed-Italic.otd: src/RobotoCondensed-Italic.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-Italic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Italic.otd
out/RobotoCondensed-MediumItalic.ttf: out/RobotoCondensed-MediumItalic.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd
	python merge.py out/RobotoCondensed-MediumItalic.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd
	otfccbuild out/RobotoCondensed-MediumItalic.otd -O3 -o out/RobotoCondensed-MediumItalic.ttf
	ttx -t 'head' -o RobotoCondensed-MediumItalic.ttx src/RobotoCondensed-MediumItalic.ttf
	ttx -m out/RobotoCondensed-MediumItalic.ttf -o out/RobotoCondensed-MediumItalic.ttf RobotoCondensed-MediumItalic.ttx
	rm RobotoCondensed-MediumItalic.ttx
out/RobotoCondensed-MediumItalic.otd: src/RobotoCondensed-MediumItalic.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-MediumItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-MediumItalic.otd
out/RobotoCondensed-BoldItalic.ttf: out/RobotoCondensed-BoldItalic.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd
	python merge.py out/RobotoCondensed-BoldItalic.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd
	otfccbuild out/RobotoCondensed-BoldItalic.otd -O3 -o out/RobotoCondensed-BoldItalic.ttf
	ttx -t 'head' -o RobotoCondensed-BoldItalic.ttx src/RobotoCondensed-BoldItalic.ttf
	ttx -m out/RobotoCondensed-BoldItalic.ttf -o out/RobotoCondensed-BoldItalic.ttf RobotoCondensed-BoldItalic.ttx
	rm RobotoCondensed-BoldItalic.ttx
out/RobotoCondensed-BoldItalic.otd: src/RobotoCondensed-BoldItalic.ttf
	mkdir -p out/
	otfccdump src/RobotoCondensed-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-BoldItalic.otd
out/NotoSerif-Regular.ttf: out/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd
	python merge.py out/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd
	otfccbuild out/NotoSerif-Regular.otd -O3 -o out/NotoSerif-Regular.ttf
	ttx -t 'head' -o NotoSerif-Regular.ttx src/NotoSerif-Regular.ttf
	ttx -m out/NotoSerif-Regular.ttf -o out/NotoSerif-Regular.ttf NotoSerif-Regular.ttx
	rm NotoSerif-Regular.ttx
out/NotoSerif-Regular.otd: src/NotoSerif-Regular.ttf
	mkdir -p out/
	otfccdump src/NotoSerif-Regular.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Regular.otd
out/NotoSerif-Bold.ttf: out/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd
	python merge.py out/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd
	otfccbuild out/NotoSerif-Bold.otd -O3 -o out/NotoSerif-Bold.ttf
	ttx -t 'head' -o NotoSerif-Bold.ttx src/NotoSerif-Bold.ttf
	ttx -m out/NotoSerif-Bold.ttf -o out/NotoSerif-Bold.ttf NotoSerif-Bold.ttx
	rm NotoSerif-Bold.ttx
out/NotoSerif-Bold.otd: src/NotoSerif-Bold.ttf
	mkdir -p out/
	otfccdump src/NotoSerif-Bold.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Bold.otd
out/NotoSerif-Italic.ttf: out/NotoSerif-Italic.otd cjk/NotoSerifCJKsc-Italic.otd
	python merge.py out/NotoSerif-Italic.otd cjk/NotoSerifCJKsc-Italic.otd
	otfccbuild out/NotoSerif-Italic.otd -O3 -o out/NotoSerif-Italic.ttf
	ttx -t 'head' -o NotoSerif-Italic.ttx src/NotoSerif-Italic.ttf
	ttx -m out/NotoSerif-Italic.ttf -o out/NotoSerif-Italic.ttf NotoSerif-Italic.ttx
	rm NotoSerif-Italic.ttx
out/NotoSerif-Italic.otd: src/NotoSerif-Italic.ttf
	mkdir -p out/
	otfccdump src/NotoSerif-Italic.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Italic.otd
out/NotoSerif-BoldItalic.ttf: out/NotoSerif-BoldItalic.otd cjk/NotoSerifCJKsc-BoldItalic.otd
	python merge.py out/NotoSerif-BoldItalic.otd cjk/NotoSerifCJKsc-BoldItalic.otd
	otfccbuild out/NotoSerif-BoldItalic.otd -O3 -o out/NotoSerif-BoldItalic.ttf
	ttx -t 'head' -o NotoSerif-BoldItalic.ttx src/NotoSerif-BoldItalic.ttf
	ttx -m out/NotoSerif-BoldItalic.ttf -o out/NotoSerif-BoldItalic.ttf NotoSerif-BoldItalic.ttx
	rm NotoSerif-BoldItalic.ttx
out/NotoSerif-BoldItalic.otd: src/NotoSerif-BoldItalic.ttf
	mkdir -p out/
	otfccdump src/NotoSerif-BoldItalic.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-BoldItalic.otd
cjk/NotoSansCJKsc-ThinItalic.otd: cjk/NotoSansCJKsc-Thin.otd
	python italize.py cjk/NotoSansCJKsc-Thin.otd cjk/NotoSansCJKsc-ThinItalic.otd 0.1733
cjk/NotoSansCJKsc-LightItalic.otd: cjk/NotoSansCJKsc-Light.otd
	python italize.py cjk/NotoSansCJKsc-Light.otd cjk/NotoSansCJKsc-LightItalic.otd 0.1733
cjk/NotoSansCJKsc-Italic.otd: cjk/NotoSansCJKsc-Regular.otd
	python italize.py cjk/NotoSansCJKsc-Regular.otd cjk/NotoSansCJKsc-Italic.otd 0.1733
cjk/NotoSansCJKsc-MediumItalic.otd: cjk/NotoSansCJKsc-Medium.otd
	python italize.py cjk/NotoSansCJKsc-Medium.otd cjk/NotoSansCJKsc-MediumItalic.otd 0.1733
cjk/NotoSansCJKsc-BoldItalic.otd: cjk/NotoSansCJKsc-Bold.otd
	python italize.py cjk/NotoSansCJKsc-Bold.otd cjk/NotoSansCJKsc-BoldItalic.otd 0.1733
cjk/NotoSansCJKsc-BlackItalic.otd: cjk/NotoSansCJKsc-Black.otd
	python italize.py cjk/NotoSansCJKsc-Black.otd cjk/NotoSansCJKsc-BlackItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-LightItalic.otd: cjk/NotoSansCJKscCondensed-Light.otd
	python italize.py cjk/NotoSansCJKscCondensed-Light.otd cjk/NotoSansCJKscCondensed-LightItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-Italic.otd: cjk/NotoSansCJKscCondensed-Regular.otd
	python italize.py cjk/NotoSansCJKscCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Italic.otd 0.1733
cjk/NotoSansCJKscCondensed-MediumItalic.otd: cjk/NotoSansCJKscCondensed-Medium.otd
	python italize.py cjk/NotoSansCJKscCondensed-Medium.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-BoldItalic.otd: cjk/NotoSansCJKscCondensed-Bold.otd
	python italize.py cjk/NotoSansCJKscCondensed-Bold.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd 0.1733
cjk/NotoSerifCJKsc-Italic.otd: cjk/NotoSerifCJKsc-Regular.otd
	python italize.py cjk/NotoSerifCJKsc-Regular.otd cjk/NotoSerifCJKsc-Italic.otd 0.2125
cjk/NotoSerifCJKsc-BoldItalic.otd: cjk/NotoSerifCJKsc-Bold.otd
	python italize.py cjk/NotoSerifCJKsc-Bold.otd cjk/NotoSerifCJKsc-BoldItalic.otd 0.2125
cjk/NotoSansCJKscCondensed-Light.otd: cjk/NotoSansCJKsc-Light.otd
	python condense.py cjk/NotoSansCJKsc-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
cjk/NotoSansCJKscCondensed-Regular.otd: cjk/NotoSansCJKsc-Regular.otd
	python condense.py cjk/NotoSansCJKsc-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
cjk/NotoSansCJKscCondensed-Medium.otd: cjk/NotoSansCJKsc-Medium.otd
	python condense.py cjk/NotoSansCJKsc-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
cjk/NotoSansCJKscCondensed-Bold.otd: cjk/NotoSansCJKsc-Bold.otd
	python condense.py cjk/NotoSansCJKsc-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
cjk/NotoSansCJKjp-Thin.otd: src/NotoSansCJKjp-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Thin.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Thin.ttf
	otfccdump cjk/NotoSansCJKjp-Thin.ttf -o cjk/NotoSansCJKjp-Thin.otd
cjk/NotoSansCJKjp-Light.otd: src/NotoSansCJKjp-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Light.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Light.ttf
	otfccdump cjk/NotoSansCJKjp-Light.ttf -o cjk/NotoSansCJKjp-Light.otd
cjk/NotoSansCJKjp-Regular.otd: src/NotoSansCJKjp-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Regular.ttf
	otfccdump cjk/NotoSansCJKjp-Regular.ttf -o cjk/NotoSansCJKjp-Regular.otd
cjk/NotoSansCJKjp-Medium.otd: src/NotoSansCJKjp-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Medium.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Medium.ttf
	otfccdump cjk/NotoSansCJKjp-Medium.ttf -o cjk/NotoSansCJKjp-Medium.otd
cjk/NotoSansCJKjp-Bold.otd: src/NotoSansCJKjp-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Bold.ttf
	otfccdump cjk/NotoSansCJKjp-Bold.ttf -o cjk/NotoSansCJKjp-Bold.otd
cjk/NotoSansCJKjp-Black.otd: src/NotoSansCJKjp-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKjp-Black.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKjp-Black.ttf
	otfccdump cjk/NotoSansCJKjp-Black.ttf -o cjk/NotoSansCJKjp-Black.otd
cjk/NotoSansCJKkr-Thin.otd: src/NotoSansCJKkr-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Thin.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Thin.ttf
	otfccdump cjk/NotoSansCJKkr-Thin.ttf -o cjk/NotoSansCJKkr-Thin.otd
cjk/NotoSansCJKkr-Light.otd: src/NotoSansCJKkr-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Light.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Light.ttf
	otfccdump cjk/NotoSansCJKkr-Light.ttf -o cjk/NotoSansCJKkr-Light.otd
cjk/NotoSansCJKkr-Regular.otd: src/NotoSansCJKkr-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Regular.ttf
	otfccdump cjk/NotoSansCJKkr-Regular.ttf -o cjk/NotoSansCJKkr-Regular.otd
cjk/NotoSansCJKkr-Medium.otd: src/NotoSansCJKkr-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Medium.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Medium.ttf
	otfccdump cjk/NotoSansCJKkr-Medium.ttf -o cjk/NotoSansCJKkr-Medium.otd
cjk/NotoSansCJKkr-Bold.otd: src/NotoSansCJKkr-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Bold.ttf
	otfccdump cjk/NotoSansCJKkr-Bold.ttf -o cjk/NotoSansCJKkr-Bold.otd
cjk/NotoSansCJKkr-Black.otd: src/NotoSansCJKkr-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKkr-Black.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKkr-Black.ttf
	otfccdump cjk/NotoSansCJKkr-Black.ttf -o cjk/NotoSansCJKkr-Black.otd
cjk/NotoSansCJKsc-Thin.otd: src/NotoSansCJKsc-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Thin.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Thin.ttf
	otfccdump cjk/NotoSansCJKsc-Thin.ttf -o cjk/NotoSansCJKsc-Thin.otd
cjk/NotoSansCJKsc-Light.otd: src/NotoSansCJKsc-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Light.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Light.ttf
	otfccdump cjk/NotoSansCJKsc-Light.ttf -o cjk/NotoSansCJKsc-Light.otd
cjk/NotoSansCJKsc-Regular.otd: src/NotoSansCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Regular.ttf
	otfccdump cjk/NotoSansCJKsc-Regular.ttf -o cjk/NotoSansCJKsc-Regular.otd
cjk/NotoSansCJKsc-Medium.otd: src/NotoSansCJKsc-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Medium.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Medium.ttf
	otfccdump cjk/NotoSansCJKsc-Medium.ttf -o cjk/NotoSansCJKsc-Medium.otd
cjk/NotoSansCJKsc-Bold.otd: src/NotoSansCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Bold.ttf
	otfccdump cjk/NotoSansCJKsc-Bold.ttf -o cjk/NotoSansCJKsc-Bold.otd
cjk/NotoSansCJKsc-Black.otd: src/NotoSansCJKsc-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKsc-Black.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Black.ttf
	otfccdump cjk/NotoSansCJKsc-Black.ttf -o cjk/NotoSansCJKsc-Black.otd
cjk/NotoSansCJKtc-Thin.otd: src/NotoSansCJKtc-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Thin.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Thin.ttf
	otfccdump cjk/NotoSansCJKtc-Thin.ttf -o cjk/NotoSansCJKtc-Thin.otd
cjk/NotoSansCJKtc-Light.otd: src/NotoSansCJKtc-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Light.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Light.ttf
	otfccdump cjk/NotoSansCJKtc-Light.ttf -o cjk/NotoSansCJKtc-Light.otd
cjk/NotoSansCJKtc-Regular.otd: src/NotoSansCJKtc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Regular.ttf
	otfccdump cjk/NotoSansCJKtc-Regular.ttf -o cjk/NotoSansCJKtc-Regular.otd
cjk/NotoSansCJKtc-Medium.otd: src/NotoSansCJKtc-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Medium.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Medium.ttf
	otfccdump cjk/NotoSansCJKtc-Medium.ttf -o cjk/NotoSansCJKtc-Medium.otd
cjk/NotoSansCJKtc-Bold.otd: src/NotoSansCJKtc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Bold.ttf
	otfccdump cjk/NotoSansCJKtc-Bold.ttf -o cjk/NotoSansCJKtc-Bold.otd
cjk/NotoSansCJKtc-Black.otd: src/NotoSansCJKtc-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSansCJKtc-Black.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKtc-Black.ttf
	otfccdump cjk/NotoSansCJKtc-Black.ttf -o cjk/NotoSansCJKtc-Black.otd
cjk/NotoSerifCJKsc-Regular.otd: src/NotoSerifCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSerifCJKsc-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSerifCJKsc-Regular.ttf
	otfccdump cjk/NotoSerifCJKsc-Regular.ttf -o cjk/NotoSerifCJKsc-Regular.otd
cjk/NotoSerifCJKsc-Bold.otd: src/NotoSerifCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints src/NotoSerifCJKsc-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSerifCJKsc-Bold.ttf
	otfccdump cjk/NotoSerifCJKsc-Bold.ttf -o cjk/NotoSerifCJKsc-Bold.otd
