# Android Chinese (Simplified) Font Completion Generator

Build Chinese (Simplified) Font Completion pack for Android N and O.

## How to Build

**WARNING:** The implemetation of parallel processing is simple and stupid. 40 GiB memory required.

Install AFDKO, FontForge, otfcc, otfcc-c2q, and otfcc-ttcize.

Download Noto Sans CJK JP/KR/SC/TC Thin/Light/Regular/Medium/Bold/Black (4 × 6 = 24 files), Noto Serif CJK SC Regular/Bold (2 files), Roboto Thin/Light/Regular/Medium/Bold/Black Roman/Italic (6 × 2 = 12 files), Roboto Condensed Light/Regular/Medium/Bold Roman/Italic (4 × 2 = 8 files), and Noto Serif Regular/Bold Roman/Italic (2 × 2 = 4 files).

Put the 50 files mentioned above to `src/`, without renaming.

```bash
bash process.bash
```

Output will be found in `out/` and `ttc/`.

## TODO

+ Use Makefile to control build process.
