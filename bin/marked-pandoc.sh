#!/bin/sh
#-r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template=/Users/lramirez/.pandoc/templates/html.template --css=/Users/lramirez/.pandoc/marked/kultiad-serif.css --filter pandoc-crossref --filter pandoc-citeproc --filter pandoc-citeproc-preamble --csl=/Users/lramirez/.pandoc/csl/apa.csl --bibliography=/Users/lramirez/Documents/bibs/socbib-pandoc.bib 
export HOME=/Users/lramirez/
/.cabal/bin/pandoc -r markdown+simple_tables+table_captions+yaml_metadata_block -w html -S --template=~/.pandoc/templates/html.template --css=~/.pandoc/marked/kultiad-serif.css --filter pandoc-crossref --filter pandoc-citeproc --filter pandoc-citeproc-preamble --csl=~/.pandoc/csl/apa.csl --bibliography=~/Documents/bibs/socbib-pandoc.bib 
