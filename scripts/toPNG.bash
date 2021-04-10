#!/bin/bash
# arg 1:
#   directory with the images
# arg 2:
#   directory with the html files
for filename in $1/*.jpg; do
    convert $filename "$(echo $filename | rev | cut -c 4- | rev ).png"
done

for htmlfile in $2/*.html; do 
    sed "s/jpg/png/" -i $htmlfile
done 
