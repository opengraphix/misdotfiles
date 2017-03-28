#!/bin/bash

for f in *.tif
do
    raster2pgsql -I -s <SRID> $f `basename $f .tif` > `basename $f .tif`.sql
done

for f in *.sql
do
    psql -d <DATABASE> -f $f
done
