#!usr/bin/env bash

cd $build

[ -f $resume.pdf ] && rm $resume.pdf || echo "continue without removal"

[ -f $resume.pdf ] && exit 1 || echo "continue building pdf"


xelatex -interaction=nonstopmode $resume.tex

[ -f $resume.pdf ] && exit 0 || exit 1