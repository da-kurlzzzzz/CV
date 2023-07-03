#!/usr/bin/env bash

[ $# -ne 1 ] && exit 1

file="$1"

pandoc --pdf-engine weasyprint -o "${file/md/pdf}" "$file"
