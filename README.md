# Android CJK Font Completion Generator

Rebuild Roboto, Roboto Condensed, and Noto Serif with CJK support.

## Character Sets

+ [Full (OpenType/TT)](full-ttf/): simply merge Roboto / Noto Serif with Noto CJK SC. Used by [Chinese (Simplified) Font Completion](https://github.com/Magisk-Modules-Repo/chinesesimplified-font-completion) module.
+ [Full (OpenType/CFF)](full-otf/): simply merge Roboto / Noto Serif with Noto CJK SC. Under testing. Smaller than OpenType/TT.
+ [GB18030 + 通用规范汉字](gb18030/): share glyphs between Roman and Italic.
+ [GB2312 + 通用规范汉字](gb2312/): share glyphs among Roman, Italic, Condensed Roman, and Condensed Italic. NOT RECOMMANDED, just for fun.

## Build for Chinese (Simplified)

Install [AFDKO](https://github.com/adobe-type-tools/afdko), [otfcc](https://github.com/caryll/otfcc) and [otfcc-c2q](https://github.com/caryll/otfcc-cubic2quad).

Download Noto Sans CJK SC Thin/Light/Regular/Medium/Bold/Black (6 files), Noto Serif CJK SC Regular/Bold (2 files), Roboto Thin/Light/Regular/Medium/Bold/Black Roman/Italic (6 × 2 = 12 files), Roboto Condensed Light/Regular/Medium/Bold Roman/Italic (4 × 2 = 8 files), and Noto Serif Regular/Bold Roman/Italic (2 × 2 = 4 files).

Put these 32 files to `src/`, then

```bash
cd <charset>/
make -j<threads>
```

Note: 10 GiB memory required when running with `-j4`.

Output can be found in `<charset>/out/`.

## Build for Chinese (Traditional), Japanese, and Korean

+ Full: can be built for Chinese (Traditional), Japanese, and Korean.
+ GB18030: can be built for Chinese (Traditional) and Japanese.
+ GB2312: Chinese (Simplified) only, would be a disaster if built for other languages.

To build, run

+ `sed -i 's/CJKsc/CJKtc/g' Makefile` for Chinese (Traditional, Taiwan)
+ `sed -i 's/SansCJKsc/SansCJKhk/g;s/SerifCJKsc/SerifCJKtw/g' Makefile` for Chinese (Traditional, Hong Kong) (quite different, for Noto Serif CJK has no HK variant)
+ `sed -i 's/CJKsc/CJKjp/g' Makefile` for Japanese
+ `sed -i 's/CJKsc/CJKkr/g' Makefile` for Korean

before `make`ing.
