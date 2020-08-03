#!/bin/bash

PWD=$(pwd)

# Create shimlink
for f in ??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.md" ]] && continue
   
    sudo ln -sfnv ${PWD}/${f} /usr/local/bin/${f}
done
