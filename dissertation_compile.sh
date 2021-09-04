#!/bin/bash

if [ $# -ne 1 ]; then
    echo $0: usage: myscript name
    exit 1
fi

filename=$1

echo "Compiling LaTex file $filename.tex"

latex $filename.tex
latex $filename.tex
bibtex $filename.aux
latex $filename.tex
latex $filename.tex
dvipdf $filename.dvi
exit 0

