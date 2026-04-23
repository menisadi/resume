# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Build

```bash
xelatex resume.tex
```

Requires XeLaTeX installed locally. Alternatively, open on [Overleaf](https://overleaf.com). Output is `Current_CV.pdf`.

## Architecture

This is a LaTeX CV project based on the [Awesome-CV](https://github.com/posquit0/Awesome-CV) template.

- **`resume.tex`** — Main document with all CV content (sections: Summary, Experience, Education, Publications, Awards, Skills)
- **`awesome-cv.cls`** — Document class defining all layout commands and styling (`\cventry`, `\cvsection`, etc.). Rarely needs changes unless customizing the template design.
- **`fontawesome.sty`** — Font Awesome icon support for contact info
- **`fonts/`** — Roboto and Source Sans Pro typefaces used by the class

The backup files (`resume-backup.tex`, `awesome-backup.tex`) are copies of the original template with placeholder data and are not compiled.

## Theme Color

The active color is set in `resume.tex`:
```latex
\colorlet{awesome}{awesome-red}
```

Available presets: `awesome-emerald`, `awesome-skyblue`, `awesome-red`, `awesome-pink`, `awesome-orange`, `awesome-nephritis`, `awesome-concrete`, `awesome-darknight`.
