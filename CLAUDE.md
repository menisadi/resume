# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

```bash
typst compile resume.typ
```

Requires [Typst](https://typst.app) installed locally. Output is `resume.pdf`.

## Architecture

The main CV is written in Typst:

- **`resume.typ`** — Main document with all CV content (sections: Summary, Experience, Education, Publications, Awards, Skills)

The legacy LaTeX version (based on [Awesome-CV](https://github.com/posquit0/Awesome-CV)) lives in `latex/`:

- **`latex/resume.tex`** — LaTeX source
- **`latex/awesome-cv.cls`** — Document class with layout/styling
- **`latex/fontawesome.sty`** — Font Awesome icon support
- **`latex/fonts/`** — Roboto and Source Sans Pro typefaces

## Theme Color

The accent color is set near the top of `resume.typ`:
```typst
#let accent = rgb("#CE1212")
```
