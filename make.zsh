#!/bin/zsh

name=`echo $1 | sed 's/\.tex$//'`

latex $name.tex
dvipdf $name.dvi

rm $name.log
rm $name.dvi
rm $name.aux
rm $name.out

evince $name.pdf

