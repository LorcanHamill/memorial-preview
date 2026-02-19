#!/usr/bin/bash

cd images
ls *.jpg | sort | awk '{printf "\"%s\",\n", $0}' > ../photos.js
echo "const photos = [" | cat - ../photos.js > tmp.js
echo "];" >> tmp.js
mv tmp.js ../photos.js

