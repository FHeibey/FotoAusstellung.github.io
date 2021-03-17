#!/bin/bash
cd ../assets && /bin/ls | xargs convert -density 50 -units PixelsPerInch $1

