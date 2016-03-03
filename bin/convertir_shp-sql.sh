#/bin/bash
# Script para convertir shp a sql usando latin1
for i in $(ls *.shp); do
nombre=$(echo $i | cut -d "." -f 1);
shp2pgsql -I -s 4326 -W latin1 $i $nombre > $nombre.sql
done;
