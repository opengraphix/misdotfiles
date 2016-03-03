#!/bin/bash
for actual in *
  do nuevo=$(echo $actual | tr ' ' _)
  mv "$actual" $nuevo
done
