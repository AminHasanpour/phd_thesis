#!/bin/bash

# Script to compile the Persian acknowledgements block
# This creates a standalone PDF that can be included in the main document

cd "$(dirname "$0")"

echo "Compiling Persian acknowledgements block..."
xelatex -interaction=nonstopmode Acknowledgements_Persian.tex

# Clean up auxiliary files
rm -f Acknowledgements_Persian.aux Acknowledgements_Persian.log Acknowledgements_Persian.bbl

echo "Done! Generated Acknowledgements_Persian.pdf"
