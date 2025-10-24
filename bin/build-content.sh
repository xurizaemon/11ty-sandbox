#!/usr/bin/env bash

set -e
shopt -s extglob

# Extracted location of media.tgz
cd src/media

echo "# Images" > ../images.md
echo >> ../images.md

echo "# Media" > ../media.md
echo >> ../media.md

find . \( -name '*.gif' -o -name '*.jpg' -o -name '*.jpeg' -o -name '*.png' -o -name '*.webm' \) -printf '![%P](/media/%P)\n' >> ../images.md

find . \( -name '*.mp3' \) -printf '<audio src="/media/%P">%P</audio>' >> ../media.md

find . \( -name '*.mp4' -o -name '*.m4a' -o -name '*.mov' \) -printf '<video src="/media/%P">%P</video>' >> ../media.md
