#!/usr/bin/env bash

set -e
shopt -s extglob

# Extracted location of media.tgz
cd src/media

echo "# Images" > ../images.md
echo > ../images.md

echo "# Media" > ../media.md
echo > ../media.md

for file in *.@(png|jpg|gif|jpeg); do
  echo "![$file](/media/$file)" >> ../images.md
done

for file in *.@(mp4|m4a|mov); do
  echo "<video src='/media/$file'></video>" >> ../media.md
done

for file in *.@(mp3); do
  echo "<audio src='/media/$file'></audio>" >> ../media.md
done
