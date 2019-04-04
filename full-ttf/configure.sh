cat >Makefile <<EOF
.PHONY: all clean mkdir

all: $(echo out/Roboto-{Thin,Light,Regular,Medium,Bold,Black,ThinItalic,LightItalic,Italic,MediumItalic,BoldItalic,BlackItalic}.ttf out/RobotoCondensed-{Light,Regular,Medium,Bold,LightItalic,Italic,MediumItalic,BoldItalic}.ttf out/NotoSerif-{Regular,Bold,Italic,BoldItalic}.ttf)

clean:
	-rm -r cjk/
	-rm out/*.otd

EOF

# phase 4: merge
for weight in Thin Light Regular Medium Bold Black ThinItalic LightItalic Italic MediumItalic BoldItalic BlackItalic; do
	basename=Roboto-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKsc-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd cjk/$cjkbase.otd
	PYTHONPATH=.. python merge.py out/$basename.otd cjk/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: ../src/$file
	mkdir -p out/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/$basename.otd
EOF
done
for weight in Light Regular Medium Bold LightItalic Italic MediumItalic BoldItalic; do
	basename=RobotoCondensed-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKscCondensed-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd cjk/$cjkbase.otd
	PYTHONPATH=.. python merge.py out/$basename.otd cjk/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: ../src/$file
	mkdir -p out/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015, 2018 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/$basename.otd
EOF
done
for weight in Regular Bold Italic BoldItalic; do
	basename=NotoSerif-$weight
	file=$basename.ttf
	cjkbase=NotoSerifCJKsc-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd cjk/$cjkbase.otd
	PYTHONPATH=.. python merge.py out/$basename.otd cjk/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	ttx -t 'head' -o $basename.ttx ../src/$file
	ttx -b -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: ../src/$file
	mkdir -p out/
	otfccdump ../src/$file --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/$basename.otd
EOF
done

# phase 3: generate italic CJK
for file in NotoSansCJKsc-{Thin,Light,Regular,Medium,Bold,Black}.otd NotoSansCJKscCondensed-{Light,Regular,Medium,Bold}.otd; do
	italic=$(echo $file | sed 's/.otd/Italic.otd/;s/Regular//')
	cat >>Makefile <<EOF
cjk/$italic: cjk/$file
	PYTHONPATH=.. python italize.py cjk/$file cjk/$italic 0.1733
EOF
done
for file in NotoSerifCJKsc-{Regular,Bold}.otd; do
	italic=$(echo $file | sed 's/.otd/Italic.otd/;s/Regular//')
	cat >>Makefile <<EOF
cjk/$italic: cjk/$file
	PYTHONPATH=.. python italize.py cjk/$file cjk/$italic 0.2125
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
