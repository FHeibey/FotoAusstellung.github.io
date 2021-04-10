#!/bin/sh
for filename in $1; do
    convert -density 50 -units PixelsPerInch $filename
done

