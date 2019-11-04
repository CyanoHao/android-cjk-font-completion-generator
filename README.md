# Android CJK Font Completion Generator

Rebuild Roboto, Roboto Condensed, and Noto Serif with CJK support.

## Features

### Same metrics as original fonts

Layouts will not change.

### Proportional カナ

Pre-applied proportional Kana. Follow Noto CJK’s `palt` values.

### OpenType layout features

#### “—” + “—” = “⸺”

An extra `ccmp` lookup table is added, replacing
+ 2 U+2014 _EM DASH_<span/>es by U+2E3A _TWO-EM DASH_,
+ 3 U+2014 _EM DASH_<span/>es by U+2E3B _THREE-EM DASH_,
+ 2 U+2015 _HORIZENTAL BAR_<span/>s by U+2E3A _TWO-EM DASH_,
+ 3 U+2015 _HORIZENTAL BAR_<span/>s by U+2E3B _THREE-EM DASH_.

This feature makes 破折号 (2 × U+2014 or 2 × U+2015 by most IMEs) “unbroken”.

#### Adaptive regional orthographies

Localized forms for Chinese characters are inherited from Noto CJK, support following languages by default (supported languages are configurable, see # How to build):
+ Chinese (Simplified),
+ Chinese (Traditional, Taiwan),
+ Chinese (Traditional, Hong Kong & Macau),
+ Japanese.

Android will automatically choose proper glyphs according to system language list.

#### List of OpenType layout features

+ All OTL features in original Roboto, Roboto Condensed, and Noto Serif are kept:
  + kerning pairs,
  + ligature,
  + glyph compositions,
  + style sets,
  + small capitals,
  + oldstyle and proportional numerals,
  + fractions,
  + localized forms for Cyrillic script.
+ Extra `ccmp` for em dashes, as is mentioned above.
+ OTL features inherited from Noto CJK:
  + kerning pairs,
  + localized forms for Han script,
  + glyph compositions for Hangul,
  + archaic Hangul syllables (if Korean support enabled).

### Noto CJK and Source Han for font-aware apps

Some apps (like Firefox) are aware of system fonts. In these apps, you can specify a font name like “思源黑体” or “源ノ明朝”, instead of “sans-serif” or “serif”.

In [gapped TTC](https://github.com/caryll/otfcc-ttcize#options) format, Noto CJK and Source Han families are provided at small cost (~ 40 MiB extra space).

## How to build

### Dependency

+ Basic Unix utils;
+ [Python 3](https://www.python.org/),
  + run `git submodule update --init --recursive` to fetch additional modules;
+ [fonttools](https://github.com/fonttools/fonttools) or [afdko](https://github.com/adobe-type-tools/afdko);
+ [Node.js](https://nodejs.org/),
  + run `npm install` to fetch additional modules;
+ [otfcc](https://github.com/caryll/otfcc),
  + pre-built binaries are also available at [Warcraft Font Merger repo](https://github.com/nowar-fonts/Warcraft-Font-Merger) (`bin-<platform>/`).

### Prepare CJK source

Download and put these files (30 + 10 + 8 + 30 + 8 = 86) to `src/cjk/`:
+ `NotoSansCJK{jp,kr,sc,tc,hk}-{Thin,Light,Regular,Medium,Bold,Black}`
+ `NotoSansMonoCJK{jp,kr,sc,tc,hk}-{Regular,Bold}`
+ `NotoSerifCJK{jp,kr,sc,tc}-{Regular,Bold}`
+ `SourceHanSans{,K,SC,TC,HC}-{ExtraLight,Light,Regular,Medium,Bold,Heavy}`
+ `SourceHanSerif{,K,SC,TC,HC}-{Regular,Bold}`

### Configure

To configure language, edit `configure.py`.

```python
class Config:

    # set default language (merge with which CJK family)
    defaultLanguage = "sc"

    # keep localized form for these languages
    keepLanguage = [ "sc", "tc", "hc", "j" ]
```

Available values for `defaultLanguage` and `keepLanguage` are:
+ `sc` — Chinese (Simplified),
+ `tc` — Chinese (Traditional, Taiwan),
+ `hc` — Chinese (Traditional, Hong Kong & Macau),
+ `j` — Japanese, and
+ `k` — Korean.

Note:
+ Do not specify too many languages to `keepLanguage`. The glyph number in an OpenType font has limit of 65535.
+ `keepLanguage` can be an empty list. If so, localized form will be disabled.

### Build

```bash
python configure.py

make -j<threads> ttf
make -j<threads> ttc
```

Files would be in `out/ttf` and `out/ttc`.
