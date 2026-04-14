#!/usr/bin/env bash
set -euo pipefail

mkdir -p "$HOME/.local/bin"

echo "LaTeX toolchain ready:"
pdflatex --version | head -n 1
latexmk -v | head -n 2 | tail -n 1
biber --version | head -n 1
