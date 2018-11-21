cat >Makefile <<EOF
.PHONY: all clean mkdir

all: mkdir $(echo ttc/Roboto-{Thin,Light,Regular,Medium,Bold,Black}.ttf out/Roboto-{ThinItalic,LightItalic,Italic,MediumItalic,BoldItalic,BlackItalic}.ttf out/RobotoCondensed-{Light,Regular,Medium,Bold,LightItalic,Italic,MediumItalic,BoldItalic}.ttf out/NotoSerif-{Regular,Bold,Italic,BoldItalic}.ttf)

clean:
	-rm -r cjk/
	-rm -r lcg/
	-rm out/Roboto-{Thin,Light,Regular,Medium,Bold,Black}.ttf

mkdir:
	mkdir -p cjk/unkerned
	mkdir -p lcg/
	mkdir -p out/
	mkdir -p ttc/

EOF

# phase 7: ttcize
for weight in Thin Light Regular Medium Bold Black; do
	basename=Roboto-$weight
	cat >>Makefile <<EOF
ttc/$basename.ttf: $(echo ttc/$basename.{0,1,2,3,4}.ttf)
	otf2otc ttc/$basename.{0,1,2,3,4}.ttf -o ttc/$basename.ttc
	rm ttc/$basename.{0,1,2,3,4}.ttf
	mv ttc/$basename.ttc ttc/$basename.ttf
ttc/$basename.0.ttf: ttc/$basename.0.otd
	otfccbuild ttc/$basename.0.otd -O2 -k -o ttc/$basename.0.ttf
	ttx -t 'head' -o $basename.ttx lcg/$basename.ttf
	ttx -m ttc/$basename.0.ttf -o ttc/$basename.0.ttf $basename.ttx
	rm $basename.ttx ttc/$basename.0.otd
ttc/$basename.0.otd: out/$basename.ttf $(echo cjk/NotoSansCJK{jp,kr,sc,tc}-$weight.ttf)
	otfcc-ttcize --prefix ttc/$basename out/$basename.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-$weight.ttf
EOF
	for i in $(seq 1 4); do
		cat >>Makefile <<EOF
ttc/$basename.$i.ttf: ttc/$basename.$i.otd
	otfccbuild ttc/$basename.$i.otd -O2 -k -o ttc/$basename.$i.ttf
	rm ttc/$basename.$i.otd
ttc/$basename.$i.otd: ttc/$basename.0.otd
EOF
	done
done

# phase 6: merge
for weight in Thin Light Regular Medium Bold Black ThinItalic LightItalic Italic MediumItalic BoldItalic BlackItalic; do
	basename=Roboto-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKsc-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd out/$cjkbase.otd
	python 6-merge.py out/$basename.otd out/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	rm out/$basename.otd out/$cjkbase.otd
	ttx -t 'head' -o $basename.ttx lcg/$file
	ttx -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: lcg/$basename.ttf
	otfccdump lcg/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/$basename.otd
out/$cjkbase.otd: cjk/unkerned/$cjkbase.ttf
	otfccdump cjk/unkerned/$cjkbase.ttf -o out/$cjkbase.otd
EOF
done
for weight in Light Regular Medium Bold LightItalic Italic MediumItalic BoldItalic; do
	basename=RobotoCondensed-$weight
	file=$basename.ttf
	cjkbase=NotoSansCJKscCondensed-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd out/$cjkbase.otd
	python 6-merge.py out/$basename.otd out/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	rm out/$basename.otd out/$cjkbase.otd
	ttx -t 'head' -o $basename.ttx lcg/$file
	ttx -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: lcg/$basename.ttf
	otfccdump lcg/$file --pretty --no-bom | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' >out/$basename.otd
out/$cjkbase.otd: cjk/unkerned/$cjkbase.ttf
	otfccdump cjk/unkerned/$cjkbase.ttf -o out/$cjkbase.otd
EOF
done
for weight in Regular Bold Italic BoldItalic; do
	basename=NotoSerif-$weight
	file=$basename.ttf
	cjkbase=NotoSerifCJKsc-$weight
	cat >>Makefile <<EOF
out/$file: out/$basename.otd out/$cjkbase.otd
	python 6-merge.py out/$basename.otd out/$cjkbase.otd
	otfccbuild out/$basename.otd -O3 -o out/$file
	rm out/$basename.otd out/$cjkbase.otd
	ttx -t 'head' -o $basename.ttx lcg/$file
	ttx -m out/$file -o out/$file $basename.ttx
	rm $basename.ttx
out/$basename.otd: lcg/$basename.ttf
	otfccdump lcg/$file --pretty --no-bom | sed 's|Copyright 2015 Google Inc. All Rights Reserved.|Portions Copyright 2015 Google Inc. Portions Copyright © 2017 Adobe Systems Incorporated (http://www.adobe.com/).|' >out/$basename.otd
out/$cjkbase.otd: cjk/unkerned/$cjkbase.ttf
	otfccdump cjk/unkerned/$cjkbase.ttf -o out/$cjkbase.otd
EOF
done

# phase 5: scale Roboto to 1000 upm
for file in Roboto-{Thin,Light,Regular,Medium,Bold,Black,ThinItalic,LightItalic,Italic,MediumItalic,BoldItalic,BlackItalic}.ttf RobotoCondensed-{Light,Regular,Medium,Bold,LightItalic,Italic,MediumItalic,BoldItalic}.ttf; do
	cat >>Makefile <<EOF
lcg/$file: src/$file
	fontforge -script 5-lcg-upm.pe $file
EOF
done
for file in NotoSerif-{Regular,Bold,Italic,BoldItalic}.ttf; do
	cat >>Makefile <<EOF
lcg/$file: src/$file
	cp src/$file lcg/$file
EOF
done

# phase 4: generate italic CJK
for file in NotoSansCJKsc-{Thin,Light,Regular,Medium,Bold,Black}.ttf NotoSansCJKscCondensed-{Light,Regular,Medium,Bold}.ttf; do
	italic=$(echo $file | sed 's/.ttf/Italic.ttf/;s/Regular//')
	cat >>Makefile <<EOF
cjk/unkerned/$italic: cjk/unkerned/$file
	fontforge -script 4-italize.pe $file $italic 17.33
EOF
done
for file in NotoSerifCJKsc-{Regular,Bold}.ttf; do
	italic=$(echo $file | sed 's/.ttf/Italic.ttf/;s/Regular//')
	cat >>Makefile <<EOF
cjk/unkerned/$italic: cjk/unkerned/$file
	fontforge -script 4-italize.pe $file $italic 21.25
EOF
done

# phase 3: generate condensed CJK
for file in NotoSansCJKsc-{Light,Regular,Medium,Bold}.ttf; do
	condensed=${file/-/Condensed-}
	cat >>Makefile <<EOF
cjk/unkerned/$condensed: cjk/unkerned/$file
	fontforge -script 3-condense.pe $file $condensed
EOF
done

# phase 2: remove redundant kerning table
for file in NotoSansCJKsc-{Thin,Light,Regular,Medium,Bold,Black}.ttf NotoSerifCJKsc-{Regular,Bold}.ttf; do
	cat >>Makefile <<EOF
cjk/unkerned/$file: cjk/$file
	fontforge -script 2-cjk-unkern.pe $file
EOF
done

# phase 1: convert Noto CJK OpenType/CFF to OpenType/TT
#          and then remove some glyphs
for basename in NotoSansCJK{jp,kr,sc,tc}-{Thin,Light,Regular,Medium,Bold,Black} NotoSerifCJKsc-{Regular,Bold}; do
	cat >>Makefile <<EOF
cjk/$basename.ttf: src/$basename.otf
	otfccdump.exe --ignore-hints src/$basename.otf --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/$basename.ttf
	fontforge -script 2-cjk-subset.pe $basename.ttf 2>/dev/null
EOF
done