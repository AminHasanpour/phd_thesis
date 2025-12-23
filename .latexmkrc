# Use XeLaTeX by default (required by fontspec)
$pdflatex = 'xelatex -synctex=1 -interaction=nonstopmode %O %S';
$pdf_mode = 1;

# biblatex is configured with backend=bibtex in Setup/Preamble.tex
$bibtex_use = 2;
