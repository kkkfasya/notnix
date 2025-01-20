#!/usr/bin/bash
# move notnix to $HOME/.local/bin/
# use -m to move minified version instead

if [[ "$1" == "-m" ]]; then
    cp -v minified/notnix $HOME/.local/bin
else
    cp -v notnix $HOME/.local/bin
fi
