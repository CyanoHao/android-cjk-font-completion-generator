cat >Makefile <<EOF
.PHONY: all clean mkdir

all: $(echo out/Roboto-{Thin,Light,Regular,Medium,Bold,Black}.ttc out/RobotoCondensed-{Light,Regular,Medium,Bold}.ttc out/NotoSerif-{Regular,Bold}.ttc)

clean:
	-rm -r ttf/ cjk/

EOF

# phase 3: merge
for weight in Thin Light Regular Medium Bold Black; do
	basename=Roboto-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKsc-$weight
	if [[ $weight == Regular ]]; then
		italicbase=Roboto-Italic
	else
		italicbase=Roboto-${weight}Italic
	fi
	italicfile=$italicbase.ttf
	cat >>Makefile <<EOF
out/$basename.ttc: ttf/$file ttf/$italicfile
	mkdir -p out/
	otf2otc -o out/$basename.ttc ttf/$file ttf/$italicfile

ttf/$italicfile: ttf/$file

ttf/$file: ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd
	PYTHONPATH=.. python merge.py ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd 0.1733
	otfccbuild ttf/$basename.otd -O3 -k -o ttf/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m ttf/$file -o ttf/$file $basename.ttx
	rm $basename.ttx ttf/$basename.otd
	otfccbuild ttf/$italicbase.otd -O3 -k -o ttf/$italicfile
	ttx -t 'head' -o $italicbase.ttx ../src/$italicfile
	ttx -b -m ttf/$italicfile -o ttf/$italicfile $italicbase.ttx
	rm $italicbase.ttx ttf/$italicbase.otd

ttf/$basename.otd: ../src/$file
	mkdir -p ttf/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/$basename.otd

ttf/$italicbase.otd: ../src/$italicfile
	mkdir -p ttf/
	otfccdump \$^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >\$@

EOF
done
for weight in Light Regular Medium Bold; do
	basename=RobotoCondensed-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKscCondensed-$weight
	if [[ $weight == Regular ]]; then
		italicbase=RobotoCondensed-Italic
	else
		italicbase=RobotoCondensed-${weight}Italic
	fi
	italicfile=$italicbase.ttf
	cat >>Makefile <<EOF
out/$basename.ttc: ttf/$file ttf/$italicfile
	mkdir -p out/
	otf2otc -o out/$basename.ttc ttf/$file ttf/$italicfile

ttf/$italicfile: ttf/$file

ttf/$file: ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd
	PYTHONPATH=.. python merge.py ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd 0.1733
	otfccbuild ttf/$basename.otd -O3 -k -o ttf/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m ttf/$file -o ttf/$file $basename.ttx
	rm $basename.ttx ttf/$basename.otd
	otfccbuild ttf/$italicbase.otd -O3 -k -o ttf/$italicfile
	ttx -t 'head' -o $italicbase.ttx ../src/$italicfile
	ttx -b -m ttf/$italicfile -o ttf/$italicfile $italicbase.ttx
	rm $italicbase.ttx ttf/$italicbase.otd

ttf/$basename.otd: ../src/$file
	mkdir -p ttf/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >ttf/$basename.otd

ttf/$italicbase.otd: ../src/$italicfile
	mkdir -p ttf/
	otfccdump \$^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions © 2014-2019 Adobe (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >\$@

EOF
done
for weight in Regular Bold; do
	basename=NotoSerif-$weight
	file=$basename.ttf
	cjkbase=NotoSerifCJKsc-$weight
	if [[ $weight == Regular ]]; then
		italicbase=NotoSerif-Italic
	else
		italicbase=NotoSerif-${weight}Italic
	fi
	italicfile=$italicbase.ttf
	cat >>Makefile <<EOF
out/$basename.ttc: ttf/$file ttf/$italicfile
	mkdir -p out/
	otf2otc -o out/$basename.ttc ttf/$file ttf/$italicfile

ttf/$italicfile: ttf/$file

ttf/$file: ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd
	PYTHONPATH=.. python merge.py ttf/$basename.otd cjk/$cjkbase.otd ttf/$italicbase.otd 0.2125
	otfccbuild ttf/$basename.otd -O3 -k -o ttf/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m ttf/$file -o ttf/$file $basename.ttx
	rm $basename.ttx ttf/$basename.otd
	otfccbuild ttf/$italicbase.otd -O3 -k -o ttf/$italicfile
	ttx -t 'head' -o $italicbase.ttx ../src/$italicfile
	ttx -b -m ttf/$italicfile -o ttf/$italicfile $italicbase.ttx
	rm $italicbase.ttx ttf/$italicbase.otd

ttf/$basename.otd: ../src/$file
	mkdir -p ttf/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >ttf/$basename.otd

ttf/$italicbase.otd: ../src/$italicfile
	mkdir -p ttf/
	otfccdump \$^ --pretty --no-bom --glyph-name-prefix italic- | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >\$@

EOF
done

# phase 2: generate condensed CJK
for file in NotoSansCJKsc-{Light,Regular,Medium,Bold}.otd; do
	condensed=${file/-/Condensed-}
	cat >>Makefile <<EOF
cjk/$condensed: cjk/$file
	PYTHONPATH=.. python condense.py cjk/$file cjk/$condensed
EOF
done

# phase 1: convert Noto CJK OpenType/CFF to OpenType/TT
for basename in NotoSansCJKsc-{Thin,Light,Regular,Medium,Bold,Black} NotoSerifCJKsc-{Regular,Bold}; do
	cat >>Makefile <<EOF
cjk/$basename.otd: ../src/$basename.otf
	mkdir -p cjk/
	otfccdump --ignore-hints ../src/$basename.otf | otfcc-c2q | otfccbuild -o cjk/$basename.ttf
	otfccdump cjk/$basename.ttf -o cjk/$basename.otd
EOF
done
