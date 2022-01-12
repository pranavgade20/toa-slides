#!/bin/bash

set -e
set -o errexit

# convert $(find | grep img/Screenshot | sort -n | paste -sd\ ) slides-debug.pdf
# rm *.pdf

mkdir -p cropped/img
for img in img/*.png; do
	convert -compress jpeg -quality 70 $img "cropped/$img.jpg"
done

convert $(find | grep cropped/img/Screenshot | sort -n | paste -sd\ ) "slides.pdf"

rm -r cropped