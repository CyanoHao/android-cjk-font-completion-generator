.PHONY: all clean mkdir

all: out/Roboto-Thin.ttc out/Roboto-Light.ttc out/Roboto-Regular.ttc out/Roboto-Medium.ttc out/Roboto-Bold.ttc out/Roboto-Black.ttc out/NotoSerif-Regular.ttc out/NotoSerif-Bold.ttc

clean:
	-rm -r ttf/ cjk/

out/Roboto-Thin.ttc: ttf/Roboto-Thin.ttf ttf/Roboto-ThinItalic.ttf
	mkdir -p out/
	otf2otc -o out/Roboto-Thin.ttc ttf/Roboto-Thin.ttf ttf/Roboto-ThinItalic.ttf

ttf/Roboto-ThinItalic.ttf: ttf/Roboto-Thin.ttf

ttf/Roboto-Thin.ttf: ttf/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd ttf/Roboto-ThinItalic.otd
	PYTHONPATH=.. python merge.py ttf/Roboto-Thin.otd cjk/NotoSansCJKsc-Thin.otd ttf/Roboto-ThinItalic.otd 0.1733
	otfccbuild ttf/Roboto-Thin.otd -O3 -k -o ttf/Roboto-Thin.ttf
	ttx -t 'head' -o Roboto-Thin.ttx ../src/Roboto-Thin.ttf
	ttx -b -m ttf/Roboto-Thin.ttf -o ttf/Roboto-Thin.ttf Roboto-Thin.ttx
	rm Roboto-Thin.ttx ttf/Roboto-Thin.otd
	otfccbuild ttf/Roboto-ThinItalic.otd -O3 -k -o ttf/Roboto-ThinItalic.ttf
	ttx -t 'head' -o Roboto-ThinItalic.ttx ../src/Roboto-ThinItalic.ttf
	ttx -b -m ttf/Roboto-ThinItalic.ttf -o ttf/Roboto-ThinItalic.ttf Roboto-ThinItalic.ttx
	rm Roboto-ThinItalic.ttx ttf/Roboto-ThinItalic.otd

ttf/Roboto-Thin.otd: ../src/Roboto-Thin.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Thin.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Thin.otd

ttf/Roboto-ThinItalic.otd: ../src/Roboto-ThinItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/Roboto-Black.ttc: ttf/Roboto-Black.ttf ttf/Roboto-BlackItalic.ttf
	mkdir -p out/
	otf2otc -o out/Roboto-Black.ttc ttf/Roboto-Black.ttf ttf/Roboto-BlackItalic.ttf

ttf/Roboto-BlackItalic.ttf: ttf/Roboto-Black.ttf

ttf/Roboto-Black.ttf: ttf/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd ttf/Roboto-BlackItalic.otd
	PYTHONPATH=.. python merge.py ttf/Roboto-Black.otd cjk/NotoSansCJKsc-Black.otd ttf/Roboto-BlackItalic.otd 0.1733
	otfccbuild ttf/Roboto-Black.otd -O3 -k -o ttf/Roboto-Black.ttf
	ttx -t 'head' -o Roboto-Black.ttx ../src/Roboto-Black.ttf
	ttx -b -m ttf/Roboto-Black.ttf -o ttf/Roboto-Black.ttf Roboto-Black.ttx
	rm Roboto-Black.ttx ttf/Roboto-Black.otd
	otfccbuild ttf/Roboto-BlackItalic.otd -O3 -k -o ttf/Roboto-BlackItalic.ttf
	ttx -t 'head' -o Roboto-BlackItalic.ttx ../src/Roboto-BlackItalic.ttf
	ttx -b -m ttf/Roboto-BlackItalic.ttf -o ttf/Roboto-BlackItalic.ttf Roboto-BlackItalic.ttx
	rm Roboto-BlackItalic.ttx ttf/Roboto-BlackItalic.otd

ttf/Roboto-Black.otd: ../src/Roboto-Black.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Black.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Black.otd

ttf/Roboto-BlackItalic.otd: ../src/Roboto-BlackItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/Roboto-Light.ttc: ttf/Roboto-Light.ttf ttf/Roboto-LightItalic.ttf ttf/RobotoCondensed-Light.ttf ttf/RobotoCondensed-LightItalic.ttf
	mkdir -p out/
	otf2otc -o $@ $^

ttf/RobotoCondensed-LightItalic.ttf: ttf/Roboto-Light.ttf
	otfccbuild ttf/RobotoCondensed-LightItalic.otd -O3 -k -o ttf/RobotoCondensed-LightItalic.ttf
	ttx -t 'head' -o RobotoCondensed-LightItalic.ttx ../src/RobotoCondensed-LightItalic.ttf
	ttx -b -m ttf/RobotoCondensed-LightItalic.ttf -o ttf/RobotoCondensed-LightItalic.ttf RobotoCondensed-LightItalic.ttx
	rm RobotoCondensed-LightItalic.ttx ttf/RobotoCondensed-LightItalic.otd

ttf/RobotoCondensed-Light.ttf: ttf/Roboto-Light.ttf
	otfccbuild ttf/RobotoCondensed-Light.otd -O3 -k -o ttf/RobotoCondensed-Light.ttf
	ttx -t 'head' -o RobotoCondensed-Light.ttx ../src/RobotoCondensed-Light.ttf
	ttx -b -m ttf/RobotoCondensed-Light.ttf -o ttf/RobotoCondensed-Light.ttf RobotoCondensed-Light.ttx
	rm RobotoCondensed-Light.ttx ttf/RobotoCondensed-Light.otd

ttf/Roboto-LightItalic.ttf: ttf/Roboto-Light.ttf
	otfccbuild ttf/Roboto-LightItalic.otd -O3 -k -o ttf/Roboto-LightItalic.ttf
	ttx -t 'head' -o Roboto-LightItalic.ttx ../src/Roboto-LightItalic.ttf
	ttx -b -m ttf/Roboto-LightItalic.ttf -o ttf/Roboto-LightItalic.ttf Roboto-LightItalic.ttx
	rm Roboto-LightItalic.ttx ttf/Roboto-LightItalic.otd

ttf/Roboto-Light.ttf: ttf/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd ttf/Roboto-LightItalic.otd ttf/RobotoCondensed-Light.otd ttf/RobotoCondensed-LightItalic.otd
	PYTHONPATH=.. python merge-condense.py ttf/Roboto-Light.otd cjk/NotoSansCJKsc-Light.otd ttf/Roboto-LightItalic.otd ttf/RobotoCondensed-Light.otd ttf/RobotoCondensed-LightItalic.otd 0.1733
	otfccbuild ttf/Roboto-Light.otd -O3 -k -o ttf/Roboto-Light.ttf
	ttx -t 'head' -o Roboto-Light.ttx ../src/Roboto-Light.ttf
	ttx -b -m ttf/Roboto-Light.ttf -o ttf/Roboto-Light.ttf Roboto-Light.ttx
	rm Roboto-Light.ttx ttf/Roboto-Light.otd

ttf/Roboto-Light.otd: ../src/Roboto-Light.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Light.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Light.otd

ttf/Roboto-LightItalic.otd: ../src/Roboto-LightItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-Light.otd: ../src/RobotoCondensed-Light.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensed- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-LightItalic.otd: ../src/RobotoCondensed-LightItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensedItalic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc.Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/Roboto-Regular.ttc: ttf/Roboto-Regular.ttf ttf/Roboto-Italic.ttf ttf/RobotoCondensed-Regular.ttf ttf/RobotoCondensed-Italic.ttf
	mkdir -p out/
	otf2otc -o $@ $^

ttf/RobotoCondensed-Italic.ttf: ttf/Roboto-Regular.ttf
	otfccbuild ttf/RobotoCondensed-Italic.otd -O3 -k -o ttf/RobotoCondensed-Italic.ttf
	ttx -t 'head' -o RobotoCondensed-Italic.ttx ../src/RobotoCondensed-Italic.ttf
	ttx -b -m ttf/RobotoCondensed-Italic.ttf -o ttf/RobotoCondensed-Italic.ttf RobotoCondensed-Italic.ttx
	rm RobotoCondensed-Italic.ttx ttf/RobotoCondensed-Italic.otd

ttf/RobotoCondensed-Regular.ttf: ttf/Roboto-Regular.ttf
	otfccbuild ttf/RobotoCondensed-Regular.otd -O3 -k -o ttf/RobotoCondensed-Regular.ttf
	ttx -t 'head' -o RobotoCondensed-Regular.ttx ../src/RobotoCondensed-Regular.ttf
	ttx -b -m ttf/RobotoCondensed-Regular.ttf -o ttf/RobotoCondensed-Regular.ttf RobotoCondensed-Regular.ttx
	rm RobotoCondensed-Regular.ttx ttf/RobotoCondensed-Regular.otd

ttf/Roboto-Italic.ttf: ttf/Roboto-Regular.ttf
	otfccbuild ttf/Roboto-Italic.otd -O3 -k -o ttf/Roboto-Italic.ttf
	ttx -t 'head' -o Roboto-Italic.ttx ../src/Roboto-Italic.ttf
	ttx -b -m ttf/Roboto-Italic.ttf -o ttf/Roboto-Italic.ttf Roboto-Italic.ttx
	rm Roboto-Italic.ttx ttf/Roboto-Italic.otd

ttf/Roboto-Regular.ttf: ttf/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd ttf/Roboto-Italic.otd ttf/RobotoCondensed-Regular.otd ttf/RobotoCondensed-Italic.otd
	PYTHONPATH=.. python merge-condense.py ttf/Roboto-Regular.otd cjk/NotoSansCJKsc-Regular.otd ttf/Roboto-Italic.otd ttf/RobotoCondensed-Regular.otd ttf/RobotoCondensed-Italic.otd 0.1733
	otfccbuild ttf/Roboto-Regular.otd -O3 -k -o ttf/Roboto-Regular.ttf
	ttx -t 'head' -o Roboto-Regular.ttx ../src/Roboto-Regular.ttf
	ttx -b -m ttf/Roboto-Regular.ttf -o ttf/Roboto-Regular.ttf Roboto-Regular.ttx
	rm Roboto-Regular.ttx ttf/Roboto-Regular.otd

ttf/Roboto-Regular.otd: ../src/Roboto-Regular.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Regular.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Regular.otd

ttf/Roboto-Italic.otd: ../src/Roboto-Italic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-Regular.otd: ../src/RobotoCondensed-Regular.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensed- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-Italic.otd: ../src/RobotoCondensed-Italic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensedItalic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc.Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/Roboto-Medium.ttc: ttf/Roboto-Medium.ttf ttf/Roboto-MediumItalic.ttf ttf/RobotoCondensed-Medium.ttf ttf/RobotoCondensed-MediumItalic.ttf
	mkdir -p out/
	otf2otc -o $@ $^

ttf/RobotoCondensed-MediumItalic.ttf: ttf/Roboto-Medium.ttf
	otfccbuild ttf/RobotoCondensed-MediumItalic.otd -O3 -k -o ttf/RobotoCondensed-MediumItalic.ttf
	ttx -t 'head' -o RobotoCondensed-MediumItalic.ttx ../src/RobotoCondensed-MediumItalic.ttf
	ttx -b -m ttf/RobotoCondensed-MediumItalic.ttf -o ttf/RobotoCondensed-MediumItalic.ttf RobotoCondensed-MediumItalic.ttx
	rm RobotoCondensed-MediumItalic.ttx ttf/RobotoCondensed-MediumItalic.otd

ttf/RobotoCondensed-Medium.ttf: ttf/Roboto-Medium.ttf
	otfccbuild ttf/RobotoCondensed-Medium.otd -O3 -k -o ttf/RobotoCondensed-Medium.ttf
	ttx -t 'head' -o RobotoCondensed-Medium.ttx ../src/RobotoCondensed-Medium.ttf
	ttx -b -m ttf/RobotoCondensed-Medium.ttf -o ttf/RobotoCondensed-Medium.ttf RobotoCondensed-Medium.ttx
	rm RobotoCondensed-Medium.ttx ttf/RobotoCondensed-Medium.otd

ttf/Roboto-MediumItalic.ttf: ttf/Roboto-Medium.ttf
	otfccbuild ttf/Roboto-MediumItalic.otd -O3 -k -o ttf/Roboto-MediumItalic.ttf
	ttx -t 'head' -o Roboto-MediumItalic.ttx ../src/Roboto-MediumItalic.ttf
	ttx -b -m ttf/Roboto-MediumItalic.ttf -o ttf/Roboto-MediumItalic.ttf Roboto-MediumItalic.ttx
	rm Roboto-MediumItalic.ttx ttf/Roboto-MediumItalic.otd

ttf/Roboto-Medium.ttf: ttf/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd ttf/Roboto-MediumItalic.otd ttf/RobotoCondensed-Medium.otd ttf/RobotoCondensed-MediumItalic.otd
	PYTHONPATH=.. python merge-condense.py ttf/Roboto-Medium.otd cjk/NotoSansCJKsc-Medium.otd ttf/Roboto-MediumItalic.otd ttf/RobotoCondensed-Medium.otd ttf/RobotoCondensed-MediumItalic.otd 0.1733
	otfccbuild ttf/Roboto-Medium.otd -O3 -k -o ttf/Roboto-Medium.ttf
	ttx -t 'head' -o Roboto-Medium.ttx ../src/Roboto-Medium.ttf
	ttx -b -m ttf/Roboto-Medium.ttf -o ttf/Roboto-Medium.ttf Roboto-Medium.ttx
	rm Roboto-Medium.ttx ttf/Roboto-Medium.otd

ttf/Roboto-Medium.otd: ../src/Roboto-Medium.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Medium.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Medium.otd

ttf/Roboto-MediumItalic.otd: ../src/Roboto-MediumItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-Medium.otd: ../src/RobotoCondensed-Medium.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensed- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-MediumItalic.otd: ../src/RobotoCondensed-MediumItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensedItalic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc.Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/Roboto-Bold.ttc: ttf/Roboto-Bold.ttf ttf/Roboto-BoldItalic.ttf ttf/RobotoCondensed-Bold.ttf ttf/RobotoCondensed-BoldItalic.ttf
	mkdir -p out/
	otf2otc -o $@ $^

ttf/RobotoCondensed-BoldItalic.ttf: ttf/Roboto-Bold.ttf
	otfccbuild ttf/RobotoCondensed-BoldItalic.otd -O3 -k -o ttf/RobotoCondensed-BoldItalic.ttf
	ttx -t 'head' -o RobotoCondensed-BoldItalic.ttx ../src/RobotoCondensed-BoldItalic.ttf
	ttx -b -m ttf/RobotoCondensed-BoldItalic.ttf -o ttf/RobotoCondensed-BoldItalic.ttf RobotoCondensed-BoldItalic.ttx
	rm RobotoCondensed-BoldItalic.ttx ttf/RobotoCondensed-BoldItalic.otd

ttf/RobotoCondensed-Bold.ttf: ttf/Roboto-Bold.ttf
	otfccbuild ttf/RobotoCondensed-Bold.otd -O3 -k -o ttf/RobotoCondensed-Bold.ttf
	ttx -t 'head' -o RobotoCondensed-Bold.ttx ../src/RobotoCondensed-Bold.ttf
	ttx -b -m ttf/RobotoCondensed-Bold.ttf -o ttf/RobotoCondensed-Bold.ttf RobotoCondensed-Bold.ttx
	rm RobotoCondensed-Bold.ttx ttf/RobotoCondensed-Bold.otd

ttf/Roboto-BoldItalic.ttf: ttf/Roboto-Bold.ttf
	otfccbuild ttf/Roboto-BoldItalic.otd -O3 -k -o ttf/Roboto-BoldItalic.ttf
	ttx -t 'head' -o Roboto-BoldItalic.ttx ../src/Roboto-BoldItalic.ttf
	ttx -b -m ttf/Roboto-BoldItalic.ttf -o ttf/Roboto-BoldItalic.ttf Roboto-BoldItalic.ttx
	rm Roboto-BoldItalic.ttx ttf/Roboto-BoldItalic.otd

ttf/Roboto-Bold.ttf: ttf/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd ttf/Roboto-BoldItalic.otd ttf/RobotoCondensed-Bold.otd ttf/RobotoCondensed-BoldItalic.otd
	PYTHONPATH=.. python merge-condense.py ttf/Roboto-Bold.otd cjk/NotoSansCJKsc-Bold.otd ttf/Roboto-BoldItalic.otd ttf/RobotoCondensed-Bold.otd ttf/RobotoCondensed-BoldItalic.otd 0.1733
	otfccbuild ttf/Roboto-Bold.otd -O3 -k -o ttf/Roboto-Bold.ttf
	ttx -t 'head' -o Roboto-Bold.ttx ../src/Roboto-Bold.ttf
	ttx -b -m ttf/Roboto-Bold.ttf -o ttf/Roboto-Bold.ttf Roboto-Bold.ttx
	rm Roboto-Bold.ttx ttf/Roboto-Bold.otd

ttf/Roboto-Bold.otd: ../src/Roboto-Bold.ttf
	mkdir -p ttf/
	otfccdump ../src/Roboto-Bold.ttf --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/Roboto-Bold.otd

ttf/Roboto-BoldItalic.otd: ../src/Roboto-BoldItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-Bold.otd: ../src/RobotoCondensed-Bold.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensed- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

ttf/RobotoCondensed-BoldItalic.otd: ../src/RobotoCondensed-BoldItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix condensedItalic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc.Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >$@

out/NotoSerif-Regular.ttc: ttf/NotoSerif-Regular.ttf ttf/NotoSerif-Italic.ttf
	mkdir -p out/
	otf2otc -o out/NotoSerif-Regular.ttc ttf/NotoSerif-Regular.ttf ttf/NotoSerif-Italic.ttf

ttf/NotoSerif-Italic.ttf: ttf/NotoSerif-Regular.ttf

ttf/NotoSerif-Regular.ttf: ttf/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd ttf/NotoSerif-Italic.otd
	PYTHONPATH=.. python merge.py ttf/NotoSerif-Regular.otd cjk/NotoSerifCJKsc-Regular.otd ttf/NotoSerif-Italic.otd 0.2125
	otfccbuild ttf/NotoSerif-Regular.otd -O3 -k -o ttf/NotoSerif-Regular.ttf
	ttx -t 'head' -o NotoSerif-Regular.ttx ../src/NotoSerif-Regular.ttf
	ttx -b -m ttf/NotoSerif-Regular.ttf -o ttf/NotoSerif-Regular.ttf NotoSerif-Regular.ttx
	rm NotoSerif-Regular.ttx ttf/NotoSerif-Regular.otd
	otfccbuild ttf/NotoSerif-Italic.otd -O3 -k -o ttf/NotoSerif-Italic.ttf
	ttx -t 'head' -o NotoSerif-Italic.ttx ../src/NotoSerif-Italic.ttf
	ttx -b -m ttf/NotoSerif-Italic.ttf -o ttf/NotoSerif-Italic.ttf NotoSerif-Italic.ttx
	rm NotoSerif-Italic.ttx ttf/NotoSerif-Italic.otd

ttf/NotoSerif-Regular.otd: ../src/NotoSerif-Regular.ttf
	mkdir -p ttf/
	otfccdump ../src/NotoSerif-Regular.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >ttf/NotoSerif-Regular.otd

ttf/NotoSerif-Italic.otd: ../src/NotoSerif-Italic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >$@

out/NotoSerif-Bold.ttc: ttf/NotoSerif-Bold.ttf ttf/NotoSerif-BoldItalic.ttf
	mkdir -p out/
	otf2otc -o out/NotoSerif-Bold.ttc ttf/NotoSerif-Bold.ttf ttf/NotoSerif-BoldItalic.ttf

ttf/NotoSerif-BoldItalic.ttf: ttf/NotoSerif-Bold.ttf

ttf/NotoSerif-Bold.ttf: ttf/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd ttf/NotoSerif-BoldItalic.otd
	PYTHONPATH=.. python merge.py ttf/NotoSerif-Bold.otd cjk/NotoSerifCJKsc-Bold.otd ttf/NotoSerif-BoldItalic.otd 0.2125
	otfccbuild ttf/NotoSerif-Bold.otd -O3 -k -o ttf/NotoSerif-Bold.ttf
	ttx -t 'head' -o NotoSerif-Bold.ttx ../src/NotoSerif-Bold.ttf
	ttx -b -m ttf/NotoSerif-Bold.ttf -o ttf/NotoSerif-Bold.ttf NotoSerif-Bold.ttx
	rm NotoSerif-Bold.ttx ttf/NotoSerif-Bold.otd
	otfccbuild ttf/NotoSerif-BoldItalic.otd -O3 -k -o ttf/NotoSerif-BoldItalic.ttf
	ttx -t 'head' -o NotoSerif-BoldItalic.ttx ../src/NotoSerif-BoldItalic.ttf
	ttx -b -m ttf/NotoSerif-BoldItalic.ttf -o ttf/NotoSerif-BoldItalic.ttf NotoSerif-BoldItalic.ttx
	rm NotoSerif-BoldItalic.ttx ttf/NotoSerif-BoldItalic.otd

ttf/NotoSerif-Bold.otd: ../src/NotoSerif-Bold.ttf
	mkdir -p ttf/
	otfccdump ../src/NotoSerif-Bold.ttf --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >ttf/NotoSerif-Bold.otd

ttf/NotoSerif-BoldItalic.otd: ../src/NotoSerif-BoldItalic.ttf
	mkdir -p ttf/
	otfccdump $^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >$@

cjk/NotoSansCJKsc-Thin.otd: ../src/NotoSansCJKsc-Thin.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Thin.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Thin.ttf
	otfccdump cjk/NotoSansCJKsc-Thin.ttf -o cjk/NotoSansCJKsc-Thin.otd
cjk/NotoSansCJKsc-Light.otd: ../src/NotoSansCJKsc-Light.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Light.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Light.ttf
	otfccdump cjk/NotoSansCJKsc-Light.ttf -o cjk/NotoSansCJKsc-Light.otd
cjk/NotoSansCJKsc-Regular.otd: ../src/NotoSansCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Regular.ttf
	otfccdump cjk/NotoSansCJKsc-Regular.ttf -o cjk/NotoSansCJKsc-Regular.otd
cjk/NotoSansCJKsc-Medium.otd: ../src/NotoSansCJKsc-Medium.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Medium.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Medium.ttf
	otfccdump cjk/NotoSansCJKsc-Medium.ttf -o cjk/NotoSansCJKsc-Medium.otd
cjk/NotoSansCJKsc-Bold.otd: ../src/NotoSansCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Bold.ttf
	otfccdump cjk/NotoSansCJKsc-Bold.ttf -o cjk/NotoSansCJKsc-Bold.otd
cjk/NotoSansCJKsc-Black.otd: ../src/NotoSansCJKsc-Black.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSansCJKsc-Black.otf | otfcc-c2q | otfccbuild -o cjk/NotoSansCJKsc-Black.ttf
	otfccdump cjk/NotoSansCJKsc-Black.ttf -o cjk/NotoSansCJKsc-Black.otd
cjk/NotoSerifCJKsc-Regular.otd: ../src/NotoSerifCJKsc-Regular.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSerifCJKsc-Regular.otf | otfcc-c2q | otfccbuild -o cjk/NotoSerifCJKsc-Regular.ttf
	otfccdump cjk/NotoSerifCJKsc-Regular.ttf -o cjk/NotoSerifCJKsc-Regular.otd
cjk/NotoSerifCJKsc-Bold.otd: ../src/NotoSerifCJKsc-Bold.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/NotoSerifCJKsc-Bold.otf | otfcc-c2q | otfccbuild -o cjk/NotoSerifCJKsc-Bold.ttf
	otfccdump cjk/NotoSerifCJKsc-Bold.ttf -o cjk/NotoSerifCJKsc-Bold.otd
