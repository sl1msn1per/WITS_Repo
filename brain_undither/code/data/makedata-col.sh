#!/bin/sh

#input is picture folder. The folder must only contain pictures

#convert "$1"/* -set colorspace Gray -separate -average -dither FloydSteinberg -colors 2 dither/out.gif
#convert "$1"/* -set colorspace Gray -separate -average -colors 256 orig/out.gif

for f in "$1"/*
do
  b=$(basename "$f")
  cp "$f" orig/"$b".gif
  convert "$f" -ordered-dither o8x8,3 dither/"$b".gif
  #convert "$f" -dither FloydSteinberg -colors 4 dither/"$b".gif
done