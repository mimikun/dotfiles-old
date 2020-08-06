#!/bin/bash

NOWDIR=$(pwd)

echo "Sync dotfiles"
# Create shimlink $HOME dotfiles
for f in .??*
do
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".editorconfig" ]] && continue
    [[ "$f" == ".gitignore" ]] && continue
    [[ "$f" == "fish" ]] && continue

    sudo ln -sfnv ${NOWDIR}/${f} ${HOME}/${f}
done

## All:
### Create shimlink bin
echo "Install awesome tools to /usr/local/bin"
cd bin
bash install.sh
cd ${NOWDIR}

### Install fisher
echo "Install fisher"
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

### Install dotnet-install.sh

echo "Install dotnet-install.sh"
sudo curl https://dot.net/v1/dotnet-install.sh --create-dirs -sLo /usr/local/bin/dotnet-install.sh
sudo chmod +x /usr/local/bin/dotnet-install.sh

### sync fish global configuration
echo "Sync fish global configuration"
cd fish
bash install.sh
cd functions
bash install.sh
cd ${NOWDIR}

echo "Get fisher packages"
fish -c "fisher"

## Ubuntu Setup:
### fish-shell
#### Create shimlinks fish-shell
#### if you are not Ubuntu, exec `d7 [Enter]`
echo "Sync fish configuration(Ubuntu)"
cd ubuntu/fish
bash install.sh
cd functions
bash install.sh
cd ${NOWDIR}
