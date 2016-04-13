#!/bin/bash

[ -e bin/aha.exe ] || make;

git diff --color-words --no-index $1 $2 2>/dev/null | bin/aha.exe | pandoc --ascii -o index.html
