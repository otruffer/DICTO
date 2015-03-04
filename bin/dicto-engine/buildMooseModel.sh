#!/bin/bash  

../tools/moose/extractor/verveinej.sh -Xmx2500m -- "$1"
mv output.mse $2