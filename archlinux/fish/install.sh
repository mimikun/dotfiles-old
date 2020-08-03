#!/bin/bash

PWD=$(pwd)

# Create shimlink
for f in ??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.adoc" ]] && continue
    [[ "$f" == "functions" ]] && continue

    sudo ln -sfnv ${PWD}/${f} ${HOME}/.config/fish/${f}
done
