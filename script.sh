#!/bin/bash

set -e
set -o errexit

# convert $(find | grep img/Screenshot | sort -n | paste -sd\ ) slides-debug.pdf
rm *.pdf

mkdir -p cropped/img
for img in img/*.png; do
	convert -compress jpeg -quality 70 -crop 1595x901+880+365 $img "cropped/$img.jpg"
done

convert $(find | grep cropped/img/Screenshot | sort -n | paste -sd\ ) "slides$(date "+-%b-%d").pdf"

rm -r cropped
