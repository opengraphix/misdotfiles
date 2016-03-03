#!/bin/sh

for FILE in * ; do mv $FILE `echo $FILE | tr '[A-Z]' '[a-z]'` ; done
