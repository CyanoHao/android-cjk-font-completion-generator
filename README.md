# Android Chinese (Simplified) Font Completion Generator

Build Chinese (Simplified) Font Completion pack for Android N and O.

## How to Build

Install [AFDKO](https://github.com/adobe-type-tools/afdko), [FontForge](https://fontforge.github.io/), [otfcc](https://github.com/caryll/otfcc), [otfcc-c2q](https://github.com/caryll/otfcc-cubic2quad), and [otfcc-ttcize](https://github.com/caryll/otfcc-ttcize).

Download Noto Sans CJK JP/KR/SC/TC Thin/Light/Regular/Medium/Bold/Black (4 × 6 = 24 files), Noto Serif CJK SC Regular/Bold (2 files), Roboto Thin/Light/Regular/Medium/Bold/Black Roman/Italic (6 × 2 = 12 files), Roboto Condensed Light/Regular/Medium/Bold Roman/Italic (4 × 2 = 8 files), and Noto Serif Regular/Bold Roman/Italic (2 × 2 = 4 files).

Put the 50 files mentioned above to `src/`, without renaming.

```bash
make -j<threads>
```

Note: 8 GiB memory required when running with `-j4`.

Output can be found in `out/` and `ttc/`.
