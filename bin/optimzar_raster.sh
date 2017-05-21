#!/bin/bash
mkdir optimized
for i in `find *.tif`; do gdal_translate -CO "TILED=YES" -CO "BLOCKXSIZE=512" -CO "BLOCKYSIZE=512" $i ../optimized/$i; gdaladdo -r average ../optimized/$i 2 4 8 16 32; done
