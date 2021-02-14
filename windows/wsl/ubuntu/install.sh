#!/bin/bash

NOWDIR=$(pwd)

echo "Sync dotfiles"
# Create shimlink $HOME dotfiles
for f in .??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.adoc" ]] && continue
    [[ "$f" == "my_packages.txt" ]] && continue

    sudo ln -sfnv ${NOWDIR}/${f} ${HOME}/${f}
done

sudo ln -sfnv ${NOWDIR}/cargo_packages.txt ${HOME}/cargo_packages.txt
