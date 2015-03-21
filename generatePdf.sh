#!/bin/zsh
for f (latex/*.latex) {
  pdflatex --output-directory tmp $f
}

for f (tmp/*.pdf) {
  cp -f $f pdf/
}
