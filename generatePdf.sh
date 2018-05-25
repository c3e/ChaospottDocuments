#!/bin/bash

mkdir -p tmp

for f in latex/*.tex
do
  pdflatex --interaction=batchmode --output-directory tmp $f
done

for f in tmp/*.pdf
do
  cp -f $f pdf/
done
