#!/usr/bin/env bash

mkdir -p output

for font in "input/"* ; do
  echo $font
  fontforge -script font-patcher -q --complete --glyphdir glyphs/ --custom forkawesome --custom devicon -out output "$font"
done
