#!/bin/bash

PWD=$(pwd)

# Create shimlink
for f in ??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.adoc" ]] && continue
    
    #sudo ln -sv 
    sudo ln -sfnv ${PWD}/${f} ${HOME}/.config/nvim/${f}
done
