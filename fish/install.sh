#!/bin/bash

PWD=$(pwd)

# Create shimlink
for f in ??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.md" ]] && continue
    [[ "$f" == "functions" ]] && continue
    [[ "$f" == "completions" ]] && continue
    
    sudo ln -sfnv ${PWD}/${f} ${HOME}/.config/fish/${f}
done
