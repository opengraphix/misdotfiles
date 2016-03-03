#/bin/shell
ls -1 *.zip > filelist
for filename in `cat filelist`
do
    unzip $filename > temp
    mv temp newdir/$filename
done
