#!/bin/bash

# env
DOTFILE_DIRECTORY=$(ghq root)/github.com/mimikun/dotfiles

FISH_CONFIG_DIRECTORY=${HOME}/.config/fish
FISH_FUNCTIONS_DIRECTORY=${FISH_CONFIG_DIRECTORY}/functions

# Install fisher
curl https://git.io/fisher --create-dirs -sLo ${FISH_FUNCTIONS_DIRECTORY}/fisher.fish

# create fish shimlink
MACOS_FISH_CONFIG_DIRECTORY=${DOTFILE_DIRECTORY}/macos/fish
sudo ln -s ${MACOS_FISH_CONFIG_DIRECTORY}/config.fish ${FISH_CONFIG_DIRECTORY}/config.fish
sudo ln -s ${MACOS_FISH_CONFIG_DIRECTORY}/fish_prompt.fish ${FISH_CONFIG_DIRECTORY}/fish_prompt.fish
sudo ln -s ${MACOS_FISH_CONFIG_DIRECTORY}/fishfile ${FISH_CONFIG_DIRECTORY}/fishfile

# create fish functions shimlink
sudo ln -s ${MACOS_FISH_CONFIG_DIRECTORY}/functions/update_various.fish ${FISH_FUNCTIONS_DIRECTORY}/update_various.fish
sudo ln -s ${MACOS_FISH_CONFIG_DIRECTORY}/functions/vboxlaunch.fish ${FISH_FUNCTIONS_DIRECTORY}/vboxlaunch.fish

# create dotfile shimlink
