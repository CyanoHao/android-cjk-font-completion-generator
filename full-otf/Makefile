.PHONY: all clean mkdir

all: out/Roboto-Thin.ttf out/Roboto-Light.ttf out/Roboto-Regular.ttf out/Roboto-Medium.ttf out/Roboto-Bold.ttf out/Roboto-Black.ttf out/Roboto-ThinItalic.ttf out/Roboto-LightItalic.ttf out/Roboto-Italic.ttf out/Roboto-MediumItalic.ttf out/Roboto-BoldItalic.ttf out/Roboto-BlackItalic.ttf out/RobotoCondensed-Light.ttf out/RobotoCondensed-Regular.ttf out/RobotoCondensed-Medium.ttf out/RobotoCondensed-Bold.ttf out/RobotoCondensed-LightItalic.ttf out/RobotoCondensed-Italic.ttf out/RobotoCondensed-MediumItalic.ttf out/RobotoCondensed-BoldItalic.ttf out/NotoSerif-Regular.ttf out/NotoSerif-Bold.ttf out/NotoSerif-Italic.ttf out/NotoSerif-BoldItalic.ttf

clean:
	-rm -r cjk/
	-rm out/*.otd

out/Roboto-Thin.ttf: out/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd
	PYTHONPATH=.. python merge.py out/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd
	otfccbuild -q out/Roboto-Thin.otd -O3 -o out/Roboto-Thin.ttf
	ttx -t 'head' -o Roboto-Thin.ttx src-otf/Roboto-Thin.otf
	ttx -b -m out/Roboto-Thin.ttf -o out/Roboto-Thin.ttf Roboto-Thin.ttx
	rm Roboto-Thin.ttx
out/Roboto-Thin.otd: src-otf/Roboto-Thin.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Thin.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Thin.otd
out/Roboto-Light.ttf: out/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd
	PYTHONPATH=.. python merge.py out/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd
	otfccbuild -q out/Roboto-Light.otd -O3 -o out/Roboto-Light.ttf
	ttx -t 'head' -o Roboto-Light.ttx src-otf/Roboto-Light.otf
	ttx -b -m out/Roboto-Light.ttf -o out/Roboto-Light.ttf Roboto-Light.ttx
	rm Roboto-Light.ttx
out/Roboto-Light.otd: src-otf/Roboto-Light.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Light.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Light.otd
out/Roboto-Regular.ttf: out/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd
	PYTHONPATH=.. python merge.py out/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd
	otfccbuild -q out/Roboto-Regular.otd -O3 -o out/Roboto-Regular.ttf
	ttx -t 'head' -o Roboto-Regular.ttx src-otf/Roboto-Regular.otf
	ttx -b -m out/Roboto-Regular.ttf -o out/Roboto-Regular.ttf Roboto-Regular.ttx
	rm Roboto-Regular.ttx
out/Roboto-Regular.otd: src-otf/Roboto-Regular.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Regular.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Regular.otd
out/Roboto-Medium.ttf: out/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd
	PYTHONPATH=.. python merge.py out/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd
	otfccbuild -q out/Roboto-Medium.otd -O3 -o out/Roboto-Medium.ttf
	ttx -t 'head' -o Roboto-Medium.ttx src-otf/Roboto-Medium.otf
	ttx -b -m out/Roboto-Medium.ttf -o out/Roboto-Medium.ttf Roboto-Medium.ttx
	rm Roboto-Medium.ttx
out/Roboto-Medium.otd: src-otf/Roboto-Medium.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Medium.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Medium.otd
out/Roboto-Bold.ttf: out/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd
	PYTHONPATH=.. python merge.py out/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd
	otfccbuild -q out/Roboto-Bold.otd -O3 -o out/Roboto-Bold.ttf
	ttx -t 'head' -o Roboto-Bold.ttx src-otf/Roboto-Bold.otf
	ttx -b -m out/Roboto-Bold.ttf -o out/Roboto-Bold.ttf Roboto-Bold.ttx
	rm Roboto-Bold.ttx
out/Roboto-Bold.otd: src-otf/Roboto-Bold.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Bold.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Bold.otd
out/Roboto-Black.ttf: out/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd
	PYTHONPATH=.. python merge.py out/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd
	otfccbuild -q out/Roboto-Black.otd -O3 -o out/Roboto-Black.ttf
	ttx -t 'head' -o Roboto-Black.ttx src-otf/Roboto-Black.otf
	ttx -b -m out/Roboto-Black.ttf -o out/Roboto-Black.ttf Roboto-Black.ttx
	rm Roboto-Black.ttx
out/Roboto-Black.otd: src-otf/Roboto-Black.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Black.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Black.otd
out/Roboto-ThinItalic.ttf: out/Roboto-ThinItalic.otd cjk/NotoSansCJKsc-ThinItalic.otd
	PYTHONPATH=.. python merge.py out/Roboto-ThinItalic.otd cjk/NotoSansCJKsc-ThinItalic.otd
	otfccbuild -q out/Roboto-ThinItalic.otd -O3 -o out/Roboto-ThinItalic.ttf
	ttx -t 'head' -o Roboto-ThinItalic.ttx src-otf/Roboto-ThinItalic.otf
	ttx -b -m out/Roboto-ThinItalic.ttf -o out/Roboto-ThinItalic.ttf Roboto-ThinItalic.ttx
	rm Roboto-ThinItalic.ttx
out/Roboto-ThinItalic.otd: src-otf/Roboto-ThinItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-ThinItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-ThinItalic.otd
out/Roboto-LightItalic.ttf: out/Roboto-LightItalic.otd cjk/NotoSansCJKsc-LightItalic.otd
	PYTHONPATH=.. python merge.py out/Roboto-LightItalic.otd cjk/NotoSansCJKsc-LightItalic.otd
	otfccbuild -q out/Roboto-LightItalic.otd -O3 -o out/Roboto-LightItalic.ttf
	ttx -t 'head' -o Roboto-LightItalic.ttx src-otf/Roboto-LightItalic.otf
	ttx -b -m out/Roboto-LightItalic.ttf -o out/Roboto-LightItalic.ttf Roboto-LightItalic.ttx
	rm Roboto-LightItalic.ttx
out/Roboto-LightItalic.otd: src-otf/Roboto-LightItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-LightItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-LightItalic.otd
out/Roboto-Italic.ttf: out/Roboto-Italic.otd cjk/NotoSansCJKsc-Italic.otd
	PYTHONPATH=.. python merge.py out/Roboto-Italic.otd cjk/NotoSansCJKsc-Italic.otd
	otfccbuild -q out/Roboto-Italic.otd -O3 -o out/Roboto-Italic.ttf
	ttx -t 'head' -o Roboto-Italic.ttx src-otf/Roboto-Italic.otf
	ttx -b -m out/Roboto-Italic.ttf -o out/Roboto-Italic.ttf Roboto-Italic.ttx
	rm Roboto-Italic.ttx
out/Roboto-Italic.otd: src-otf/Roboto-Italic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-Italic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-Italic.otd
out/Roboto-MediumItalic.ttf: out/Roboto-MediumItalic.otd cjk/NotoSansCJKsc-MediumItalic.otd
	PYTHONPATH=.. python merge.py out/Roboto-MediumItalic.otd cjk/NotoSansCJKsc-MediumItalic.otd
	otfccbuild -q out/Roboto-MediumItalic.otd -O3 -o out/Roboto-MediumItalic.ttf
	ttx -t 'head' -o Roboto-MediumItalic.ttx src-otf/Roboto-MediumItalic.otf
	ttx -b -m out/Roboto-MediumItalic.ttf -o out/Roboto-MediumItalic.ttf Roboto-MediumItalic.ttx
	rm Roboto-MediumItalic.ttx
out/Roboto-MediumItalic.otd: src-otf/Roboto-MediumItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-MediumItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-MediumItalic.otd
out/Roboto-BoldItalic.ttf: out/Roboto-BoldItalic.otd cjk/NotoSansCJKsc-BoldItalic.otd
	PYTHONPATH=.. python merge.py out/Roboto-BoldItalic.otd cjk/NotoSansCJKsc-BoldItalic.otd
	otfccbuild -q out/Roboto-BoldItalic.otd -O3 -o out/Roboto-BoldItalic.ttf
	ttx -t 'head' -o Roboto-BoldItalic.ttx src-otf/Roboto-BoldItalic.otf
	ttx -b -m out/Roboto-BoldItalic.ttf -o out/Roboto-BoldItalic.ttf Roboto-BoldItalic.ttx
	rm Roboto-BoldItalic.ttx
out/Roboto-BoldItalic.otd: src-otf/Roboto-BoldItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-BoldItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BoldItalic.otd
out/Roboto-BlackItalic.ttf: out/Roboto-BlackItalic.otd cjk/NotoSansCJKsc-BlackItalic.otd
	PYTHONPATH=.. python merge.py out/Roboto-BlackItalic.otd cjk/NotoSansCJKsc-BlackItalic.otd
	otfccbuild -q out/Roboto-BlackItalic.otd -O3 -o out/Roboto-BlackItalic.ttf
	ttx -t 'head' -o Roboto-BlackItalic.ttx src-otf/Roboto-BlackItalic.otf
	ttx -b -m out/Roboto-BlackItalic.ttf -o out/Roboto-BlackItalic.ttf Roboto-BlackItalic.ttx
	rm Roboto-BlackItalic.ttx
out/Roboto-BlackItalic.otd: src-otf/Roboto-BlackItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/Roboto-BlackItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/Roboto-BlackItalic.otd
out/RobotoCondensed-Light.ttf: out/RobotoCondensed-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
	otfccbuild -q out/RobotoCondensed-Light.otd -O3 -o out/RobotoCondensed-Light.ttf
	ttx -t 'head' -o RobotoCondensed-Light.ttx src-otf/RobotoCondensed-Light.otf
	ttx -b -m out/RobotoCondensed-Light.ttf -o out/RobotoCondensed-Light.ttf RobotoCondensed-Light.ttx
	rm RobotoCondensed-Light.ttx
out/RobotoCondensed-Light.otd: src-otf/RobotoCondensed-Light.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-Light.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Light.otd
out/RobotoCondensed-Regular.ttf: out/RobotoCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
	otfccbuild -q out/RobotoCondensed-Regular.otd -O3 -o out/RobotoCondensed-Regular.ttf
	ttx -t 'head' -o RobotoCondensed-Regular.ttx src-otf/RobotoCondensed-Regular.otf
	ttx -b -m out/RobotoCondensed-Regular.ttf -o out/RobotoCondensed-Regular.ttf RobotoCondensed-Regular.ttx
	rm RobotoCondensed-Regular.ttx
out/RobotoCondensed-Regular.otd: src-otf/RobotoCondensed-Regular.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-Regular.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Regular.otd
out/RobotoCondensed-Medium.ttf: out/RobotoCondensed-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
	otfccbuild -q out/RobotoCondensed-Medium.otd -O3 -o out/RobotoCondensed-Medium.ttf
	ttx -t 'head' -o RobotoCondensed-Medium.ttx src-otf/RobotoCondensed-Medium.otf
	ttx -b -m out/RobotoCondensed-Medium.ttf -o out/RobotoCondensed-Medium.ttf RobotoCondensed-Medium.ttx
	rm RobotoCondensed-Medium.ttx
out/RobotoCondensed-Medium.otd: src-otf/RobotoCondensed-Medium.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-Medium.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Medium.otd
out/RobotoCondensed-Bold.ttf: out/RobotoCondensed-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
	otfccbuild -q out/RobotoCondensed-Bold.otd -O3 -o out/RobotoCondensed-Bold.ttf
	ttx -t 'head' -o RobotoCondensed-Bold.ttx src-otf/RobotoCondensed-Bold.otf
	ttx -b -m out/RobotoCondensed-Bold.ttf -o out/RobotoCondensed-Bold.ttf RobotoCondensed-Bold.ttx
	rm RobotoCondensed-Bold.ttx
out/RobotoCondensed-Bold.otd: src-otf/RobotoCondensed-Bold.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-Bold.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Bold.otd
out/RobotoCondensed-LightItalic.ttf: out/RobotoCondensed-LightItalic.otd cjk/NotoSansCJKscCondensed-LightItalic.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-LightItalic.otd cjk/NotoSansCJKscCondensed-LightItalic.otd
	otfccbuild -q out/RobotoCondensed-LightItalic.otd -O3 -o out/RobotoCondensed-LightItalic.ttf
	ttx -t 'head' -o RobotoCondensed-LightItalic.ttx src-otf/RobotoCondensed-LightItalic.otf
	ttx -b -m out/RobotoCondensed-LightItalic.ttf -o out/RobotoCondensed-LightItalic.ttf RobotoCondensed-LightItalic.ttx
	rm RobotoCondensed-LightItalic.ttx
out/RobotoCondensed-LightItalic.otd: src-otf/RobotoCondensed-LightItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-LightItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-LightItalic.otd
out/RobotoCondensed-Italic.ttf: out/RobotoCondensed-Italic.otd cjk/NotoSansCJKscCondensed-Italic.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-Italic.otd cjk/NotoSansCJKscCondensed-Italic.otd
	otfccbuild -q out/RobotoCondensed-Italic.otd -O3 -o out/RobotoCondensed-Italic.ttf
	ttx -t 'head' -o RobotoCondensed-Italic.ttx src-otf/RobotoCondensed-Italic.otf
	ttx -b -m out/RobotoCondensed-Italic.ttf -o out/RobotoCondensed-Italic.ttf RobotoCondensed-Italic.ttx
	rm RobotoCondensed-Italic.ttx
out/RobotoCondensed-Italic.otd: src-otf/RobotoCondensed-Italic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-Italic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-Italic.otd
out/RobotoCondensed-MediumItalic.ttf: out/RobotoCondensed-MediumItalic.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-MediumItalic.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd
	otfccbuild -q out/RobotoCondensed-MediumItalic.otd -O3 -o out/RobotoCondensed-MediumItalic.ttf
	ttx -t 'head' -o RobotoCondensed-MediumItalic.ttx src-otf/RobotoCondensed-MediumItalic.otf
	ttx -b -m out/RobotoCondensed-MediumItalic.ttf -o out/RobotoCondensed-MediumItalic.ttf RobotoCondensed-MediumItalic.ttx
	rm RobotoCondensed-MediumItalic.ttx
out/RobotoCondensed-MediumItalic.otd: src-otf/RobotoCondensed-MediumItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-MediumItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-MediumItalic.otd
out/RobotoCondensed-BoldItalic.ttf: out/RobotoCondensed-BoldItalic.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd
	PYTHONPATH=.. python merge.py out/RobotoCondensed-BoldItalic.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd
	otfccbuild -q out/RobotoCondensed-BoldItalic.otd -O3 -o out/RobotoCondensed-BoldItalic.ttf
	ttx -t 'head' -o RobotoCondensed-BoldItalic.ttx src-otf/RobotoCondensed-BoldItalic.otf
	ttx -b -m out/RobotoCondensed-BoldItalic.ttf -o out/RobotoCondensed-BoldItalic.ttf RobotoCondensed-BoldItalic.ttx
	rm RobotoCondensed-BoldItalic.ttx
out/RobotoCondensed-BoldItalic.otd: src-otf/RobotoCondensed-BoldItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/RobotoCondensed-BoldItalic.otf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/RobotoCondensed-BoldItalic.otd
out/NotoSerif-Regular.ttf: out/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd
	PYTHONPATH=.. python merge.py out/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd
	otfccbuild -q out/NotoSerif-Regular.otd -O3 -o out/NotoSerif-Regular.ttf
	ttx -t 'head' -o NotoSerif-Regular.ttx src-otf/NotoSerif-Regular.otf
	ttx -b -m out/NotoSerif-Regular.ttf -o out/NotoSerif-Regular.ttf NotoSerif-Regular.ttx
	rm NotoSerif-Regular.ttx
out/NotoSerif-Regular.otd: src-otf/NotoSerif-Regular.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/NotoSerif-Regular.otf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Regular.otd
out/NotoSerif-Bold.ttf: out/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd
	PYTHONPATH=.. python merge.py out/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd
	otfccbuild -q out/NotoSerif-Bold.otd -O3 -o out/NotoSerif-Bold.ttf
	ttx -t 'head' -o NotoSerif-Bold.ttx src-otf/NotoSerif-Bold.otf
	ttx -b -m out/NotoSerif-Bold.ttf -o out/NotoSerif-Bold.ttf NotoSerif-Bold.ttx
	rm NotoSerif-Bold.ttx
out/NotoSerif-Bold.otd: src-otf/NotoSerif-Bold.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/NotoSerif-Bold.otf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Bold.otd
out/NotoSerif-Italic.ttf: out/NotoSerif-Italic.otd cjk/NotoSerifCJKsc-Italic.otd
	PYTHONPATH=.. python merge.py out/NotoSerif-Italic.otd cjk/NotoSerifCJKsc-Italic.otd
	otfccbuild -q out/NotoSerif-Italic.otd -O3 -o out/NotoSerif-Italic.ttf
	ttx -t 'head' -o NotoSerif-Italic.ttx src-otf/NotoSerif-Italic.otf
	ttx -b -m out/NotoSerif-Italic.ttf -o out/NotoSerif-Italic.ttf NotoSerif-Italic.ttx
	rm NotoSerif-Italic.ttx
out/NotoSerif-Italic.otd: src-otf/NotoSerif-Italic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/NotoSerif-Italic.otf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-Italic.otd
out/NotoSerif-BoldItalic.ttf: out/NotoSerif-BoldItalic.otd cjk/NotoSerifCJKsc-BoldItalic.otd
	PYTHONPATH=.. python merge.py out/NotoSerif-BoldItalic.otd cjk/NotoSerifCJKsc-BoldItalic.otd
	otfccbuild -q out/NotoSerif-BoldItalic.otd -O3 -o out/NotoSerif-BoldItalic.ttf
	ttx -t 'head' -o NotoSerif-BoldItalic.ttx src-otf/NotoSerif-BoldItalic.otf
	ttx -b -m out/NotoSerif-BoldItalic.ttf -o out/NotoSerif-BoldItalic.ttf NotoSerif-BoldItalic.ttx
	rm NotoSerif-BoldItalic.ttx
out/NotoSerif-BoldItalic.otd: src-otf/NotoSerif-BoldItalic.otf
	mkdir -p out/
	otfccdump --ignore-hints src-otf/NotoSerif-BoldItalic.otf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/NotoSerif-BoldItalic.otd
cjk/NotoSansCJKsc-ThinItalic.otd: cjk/NotoSansCJKsc-Thin.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Thin.otd cjk/NotoSansCJKsc-ThinItalic.otd 0.1733
cjk/NotoSansCJKsc-LightItalic.otd: cjk/NotoSansCJKsc-Light.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Light.otd cjk/NotoSansCJKsc-LightItalic.otd 0.1733
cjk/NotoSansCJKsc-Italic.otd: cjk/NotoSansCJKsc-Regular.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Regular.otd cjk/NotoSansCJKsc-Italic.otd 0.1733
cjk/NotoSansCJKsc-MediumItalic.otd: cjk/NotoSansCJKsc-Medium.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Medium.otd cjk/NotoSansCJKsc-MediumItalic.otd 0.1733
cjk/NotoSansCJKsc-BoldItalic.otd: cjk/NotoSansCJKsc-Bold.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Bold.otd cjk/NotoSansCJKsc-BoldItalic.otd 0.1733
cjk/NotoSansCJKsc-BlackItalic.otd: cjk/NotoSansCJKsc-Black.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKsc-Black.otd cjk/NotoSansCJKsc-BlackItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-LightItalic.otd: cjk/NotoSansCJKscCondensed-Light.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKscCondensed-Light.otd cjk/NotoSansCJKscCondensed-LightItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-Italic.otd: cjk/NotoSansCJKscCondensed-Regular.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKscCondensed-Regular.otd cjk/NotoSansCJKscCondensed-Italic.otd 0.1733
cjk/NotoSansCJKscCondensed-MediumItalic.otd: cjk/NotoSansCJKscCondensed-Medium.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKscCondensed-Medium.otd cjk/NotoSansCJKscCondensed-MediumItalic.otd 0.1733
cjk/NotoSansCJKscCondensed-BoldItalic.otd: cjk/NotoSansCJKscCondensed-Bold.otd
	PYTHONPATH=.. python italize.py cjk/NotoSansCJKscCondensed-Bold.otd cjk/NotoSansCJKscCondensed-BoldItalic.otd 0.1733
cjk/NotoSerifCJKsc-Italic.otd: cjk/NotoSerifCJKsc-Regular.otd
	PYTHONPATH=.. python italize.py cjk/NotoSerifCJKsc-Regular.otd cjk/NotoSerifCJKsc-Italic.otd 0.2125
cjk/NotoSerifCJKsc-BoldItalic.otd: cjk/NotoSerifCJKsc-Bold.otd
	PYTHONPATH=.. python italize.py cjk/NotoSerifCJKsc-Bold.otd cjk/NotoSerifCJKsc-BoldItalic.otd 0.2125
cjk/NotoSansCJKscCondensed-Light.otd: cjk/NotoSansCJKsc-Light.otd
	PYTHONPATH=.. python condense.py cjk/NotoSansCJKsc-Light.otd cjk/NotoSansCJKscCondensed-Light.otd
cjk/NotoSansCJKscCondensed-Regular.otd: cjk/NotoSansCJKsc-Regular.otd
	PYTHONPATH=.. python condense.py cjk/NotoSansCJKsc-Regular.otd cjk/NotoSansCJKscCondensed-Regular.otd
cjk/NotoSansCJKscCondensed-Medium.otd: cjk/NotoSansCJKsc-Medium.otd
	PYTHONPATH=.. python condense.py cjk/NotoSansCJKsc-Medium.otd cjk/NotoSansCJKscCondensed-Medium.otd
cjk/NotoSansCJKscCondensed-Bold.otd: cjk/NotoSansCJKsc-Bold.otd
	PYTHONPATH=.. python condense.py cjk/NotoSansCJKsc-Bold.otd cjk/NotoSansCJKscCondensed-Bold.otd
cjk/NotoSansCJKsc-Thin.otd: ../src/NotoSansCJKsc-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Thin.otf -o cjk/NotoSansCJKsc-Thin.otd --name-by-hash
cjk/NotoSansCJKsc-Light.otd: ../src/NotoSansCJKsc-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Light.otf -o cjk/NotoSansCJKsc-Light.otd --name-by-hash
cjk/NotoSansCJKsc-Regular.otd: ../src/NotoSansCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Regular.otf -o cjk/NotoSansCJKsc-Regular.otd --name-by-hash
cjk/NotoSansCJKsc-Medium.otd: ../src/NotoSansCJKsc-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Medium.otf -o cjk/NotoSansCJKsc-Medium.otd --name-by-hash
cjk/NotoSansCJKsc-Bold.otd: ../src/NotoSansCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Bold.otf -o cjk/NotoSansCJKsc-Bold.otd --name-by-hash
cjk/NotoSansCJKsc-Black.otd: ../src/NotoSansCJKsc-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Black.otf -o cjk/NotoSansCJKsc-Black.otd --name-by-hash
cjk/NotoSerifCJKsc-Regular.otd: ../src/NotoSerifCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSerifCJKsc-Regular.otf -o cjk/NotoSerifCJKsc-Regular.otd --name-by-hash
cjk/NotoSerifCJKsc-Bold.otd: ../src/NotoSerifCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSerifCJKsc-Bold.otf -o cjk/NotoSerifCJKsc-Bold.otd --name-by-hash
