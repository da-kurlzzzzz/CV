#!/usr/bin/env bash

file="Sergey_Nikitich_Zarechnev.md"
macro="/translation start\njV/translation end\nk:!trans -b -no-warn :ru\n"

vim -c 'se nows' -c "let @q=\"$macro\"" -c "sav ${file/.md/.ru.md}" -c "norm 999@q" -c "wq" "$file"
