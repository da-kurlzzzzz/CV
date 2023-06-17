#!/usr/bin/env bash

file="Sergey_Nikitich_Zarechnev.md"
target="${file/.md/.ru.md}"
[ -f "$target" ] && rm "$target"

macro="/translation start\njV/translation end\nk:!trans -b -no-warn :ru\n"

vim -c 'se nows' -c "let @q=\"$macro\"" -c "sav $target" -c "norm gg999@q" -c "wq" "$file"
