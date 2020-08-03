#!/bin/bash

PWD=$(pwd)

# Create shimlink
for f in ??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.md" ]] && continue
    
    #sudo ln -sv 
    sudo ln -sfnv ${PWD}/${f} ${HOME}/.config/fish/functions/${f}
done
