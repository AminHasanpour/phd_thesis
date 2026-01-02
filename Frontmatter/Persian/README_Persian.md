# Persian Text in Acknowledgements

## Overview
This setup allows Persian text (using Vazirmatn font and RTL direction) to be included in the Acknowledgements section WITHOUT loading the `bidi` package in the main thesis document.

## How It Works
1. **Separate Compilation**: The Persian text block is compiled separately as `Acknowledgements_Persian.tex`
2. **Standalone PDF**: This creates `Acknowledgements_Persian.pdf` with proper Persian font and RTL support
3. **PDF Inclusion**: The main `Acknowledgements.tex` file includes this PDF using the `pdfpages` package
4. **No Main Document Impact**: The main thesis document doesn't need to load `bidi`, preventing any unwanted side effects on other chapters

## Files
- `Acknowledgements_Persian.tex` - Standalone LaTeX file with Persian text (uses bidi package)
- `Acknowledgements_Persian.pdf` - Compiled output (included in main document)
- `compile_persian.sh` - Shell script to compile the Persian block
- `Acknowledgements.tex` - Main acknowledgements file (includes the PDF)

## Usage

### Editing Persian Text
1. Edit `Acknowledgements_Persian.tex` to change Persian content
2. Run the compilation script:
   ```bash
   cd Frontmatter/Persian
   ./compile_persian.sh
   ```
3. The PDF will be regenerated and automatically included when you compile the main thesis

### Compiling Main Thesis
Just compile `main.tex` as usual. The `Acknowledgements_Persian.pdf` will be automatically included.

## Requirements
- XeLaTeX (for Persian font support)
- `bidi` package (only used in the standalone Persian file)
- `pdfpages` package (in main document, already added to Preamble.tex)
- Vazirmatn font files (in `../Vazirmatn/` directory)

## Customization

### Changing Font Size or Layout
Edit `Acknowledgements_Persian.tex` and modify:
- Font size: `\documentclass[12pt]{article}` (change 12pt)
- Page dimensions: `\usepackage[paperwidth=150mm,paperheight=120mm,margin=5mm]{geometry}`
- Spacing: `\setlength{\parskip}{0.5em}`

### Adjusting Position in Main Document
Edit `Acknowledgements.tex` and modify the `\includegraphics` parameters:
- Width: `width=\textwidth`
- Spacing: `\vspace{0.5em}` before/after
- Trim/crop: `trim=0 0 0 0` (left bottom right top)

## Notes
- The Persian PDF is compiled separately to isolate `bidi` package from the main document
- This approach prevents `bidi` from affecting the layout of other chapters
- Always recompile the Persian PDF after editing Persian text
- The standalone Persian file uses relative paths to the Vazirmatn font directory
