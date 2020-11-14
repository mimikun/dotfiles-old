#!/bin/bash

NOWDIR=$(pwd)

echo "Sync starship settings"

for f in .??*
do
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "README.adoc" ]] && continue

    sudo ln -sfnv ${NOWDIR}/${f} ${HOME}/.config/starship/${f}
done

