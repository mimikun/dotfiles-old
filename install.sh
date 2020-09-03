#!/bin/bash

NOWDIR=$(pwd)

echo "Sync dotfiles"
# Create shimlink $HOME dotfiles
for f in .??*
do
    [[ "$f" == "ubuntu" ]] && continue
    [[ "$f" == "windows" ]] && continue
    [[ "$f" == "archlinux" ]] && continue
    [[ "$f" == "macos" ]] && continue
    [[ "$f" == "bin" ]] && continue
    [[ "$f" == "nvim" ]] && continue
    [[ "$f" == "fish" ]] && continue
    [[ "$f" == ".git" ]] && continue
    [[ "$f" == ".editorconfig" ]] && continue
    [[ "$f" == "install.sh" ]] && continue
    [[ "$f" == "LICENSE.txt" ]] && continue
    [[ "$f" == "Makefile" ]] && continue
    [[ "$f" == "README.adoc" ]] && continue
    [[ "$f" == ".bashrc" ]] && continue
    [[ "$f" == ".cshrc" ]] && continue
    [[ "$f" == ".zshrc" ]] && continue
    [[ "$f" == ".profile" ]] && continue

    sudo ln -sfnv ${NOWDIR}/${f} ${HOME}/${f}
done

## All:
### Create shimlink bin
echo "Install awesome tools to /usr/local/bin"
cd bin
bash install.sh
cd ${NOWDIR}

### Sync neovim config
echo "Sync neovim configuration"
cd nvim
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

## Arch Setup:
### fish-shell
#### Create shimlinks fish-shell
#### if you are not Arch, exec `d7 [Enter]`
echo "wip"

## macOS Setup:
### fish-shell
#### Create shimlinks fish-shell
#### if you are not macOS, exec `d7 [Enter]`
echo "wip"
