#! /bin/bash

[[ -z "$N" ]] && N=4

mkdir -p cjk/
mkdir -p lcg/
mkdir -p out/
mkdir -p ttc/

# 1: PostScript to TrueType
for file in src/NotoSansCJK{jp,kr,sc,tc}-{Thin,Light,Regular,Medium,Bold,Black}.otf src/NotoSerifCJKsc-{Regular,Bold}.otf; do
  filename=${file#src/}
  ((i=i%N)); ((i++==0)) && wait
  (otfccdump.exe --ignore-hints $file --pretty | sed '/designedForVertical/d; /"vhea":/,/}/d; /advanceHeight/d; /verticalOrigin/d' | otfcc-c2q | otfccbuild.exe -O3 -o cjk/${filename%.otf}.ttf) &
done
wait && i=0

# 2: CJK subsetize
for file in NotoSansCJK{jp,kr,sc,tc}-{Thin,Light,Regular,Medium,Bold,Black}.ttf NotoSerifCJKsc-{Regular,Bold}.ttf; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 2-cjk-subset.pe $file) &
done
wait && i=0

# 3: CJK condense
for file in NotoSansCJKsc-{Light,Regular,Medium,Bold}.ttf; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 3-condense.pe $file $(echo $file | sed s/-/Condensed-/)) &
done
wait && i=0

# 4: CJK italize
for file in NotoSansCJKsc-{Thin,Light,Regular,Medium,Bold,Black}.ttf NotoSansCJKscCondensed-{Light,Regular,Medium,Bold}.ttf; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 4-italize.pe $file $(echo $file | sed s/.ttf/Italic.ttf/) 17.33) &
done
for file in NotoSerifCJKsc-{Regular,Bold}.ttf; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 4-italize.pe $file $(echo $file | sed s/.ttf/Italic.ttf/) 21.25) &
done
wait && i=0
for file in cjk/*-RegularItalic.ttf; do
  mv $file $(echo $file | sed s/RegularItalic.ttf/Italic.ttf/)
done

# 5: LCG scale to 1000 upm
for file in src/Roboto*.ttf; do
  filename=${file#src/}
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 5-lcg-upm.pe $filename) &
done
wait && i=0

# 6: merge
cp src/NotoSerif-*.ttf lcg/
for file in lcg/Roboto*.ttf; do
  ((i=i%N)); ((i++==0)) && wait
  (otfccdump $file --pretty | sed 's|Copyright 2011 Google Inc. All Rights Reserved.|Portions Copyright 2011 Google Inc. Portions Copyright © 2014, 2015 Adobe Systems Incorporated (http://www.adobe.com/).|;s/Licensed under the Apache License, Version 2.0/This Font Software is licensed under the SIL Open Font License, Version 1.1./;s|http://www.apache.org/licenses/LICENSE-2.0|http://scripts.sil.org/OFL|' | otfccbuild -O3 -o $file) &
done
wait && i=0
for weight in Thin Light Regular Medium Bold Black ThinItalic LightItalic Italic MediumItalic BoldItalic BlackItalic; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 6-merge.pe Roboto-$weight.ttf NotoSansCJKsc-$weight.ttf) &
done
for weight in Light Regular Medium Bold LightItalic Italic MediumItalic BoldItalic; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 6-merge.pe RobotoCondensed-$weight.ttf NotoSansCJKscCondensed-$weight.ttf) &
done
for weight in Regular Bold Italic BoldItalic; do
  ((i=i%N)); ((i++==0)) && wait
  (fontforge -script 6-merge.pe NotoSerif-$weight.ttf NotoSerifCJKsc-$weight.ttf) &
done
wait && i=0

# 6': fix metrics
for font in Roboto-{Thin,Light,Regular,Medium,Bold,Black,ThinItalic,LightItalic,Italic,MediumItalic,BoldItalic,BlackItalic} RobotoCondensed-{Light,Regular,Medium,Bold,LightItalic,Italic,MediumItalic,BoldItalic} NotoSerif-{Regular,Bold,Italic,BoldItalic}; do
  ((i=i%N)); ((i++==0)) && wait
  (ttx -t 'head' -o $font.ttx lcg/$font.ttf; ttx -m out/$font.ttf -o out/$font.ttf $font.ttx; rm $font.ttx) &
done
wait && i=0

# 7: ttcize
for weight in Thin Light Regular Medium Bold Black; do
  ((i=i%N)); ((i++==0)) && wait
  (otfcc-ttcize --prefix ttc/Roboto-$weight out/Roboto-$weight.ttf cjk/NotoSansCJK{jp,kr,sc,tc}-$weight.ttf) &
done
wait && i=0
for weight in Thin Light Regular Medium Bold Black; do
  for i in $(seq 0 4); do
    ((i=i%N)); ((i++==0)) && wait
    (otfccbuild ttc/Roboto-$weight.$i.otd -O3 -k --subroutinize -o ttc/Roboto-$weight.$i.ttf) &
  done
done
wait && i=0

# 7': fix metrics
for font in Roboto-{Thin,Light,Regular,Medium,Bold,Black}; do
  ((i=i%N)); ((i++==0)) && wait
  (ttx -t 'head' -o $font.ttx lcg/$font.ttf; ttx -m ttc/$font.0.ttf -o ttc/$font.0.ttf $font.ttx; rm $font.ttx) &
done
wait && i=0
for weight in Thin Light Regular Medium Bold Black; do
  ((i=i%N)); ((i++==0)) && wait
  (otf2otc ttc/Roboto-$weight.{0,1,2,3,4}.ttf -o ttc/Roboto-$weight.ttc) &
done
wait && i=0
rm ttc/*.otd ttc/*.ttf
