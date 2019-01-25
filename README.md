# Android Chinese (Simplified) Font Completion Generator

Build Chinese (Simplified) Font Completion pack for Android N and O.

## How to Build

Install [AFDKO](https://github.com/adobe-type-tools/afdko), [otfcc](https://github.com/caryll/otfcc) and [otfcc-c2q](https://github.com/caryll/otfcc-cubic2quad).

Download Noto Sans CJK SC Thin/Light/Regular/Medium/Bold/Black (6 files), Noto Serif CJK SC Regular/Bold (2 files), Roboto Thin/Light/Regular/Medium/Bold/Black Roman/Italic (6 × 2 = 12 files), Roboto Condensed Light/Regular/Medium/Bold Roman/Italic (4 × 2 = 8 files), and Noto Serif Regular/Bold Roman/Italic (2 × 2 = 4 files).

Put the 32 files mentioned above to `src/`, then

```bash
make -j<threads>
```

Note: 10 GiB memory required when running with `-j4`.

Output can be found in `out/`.
