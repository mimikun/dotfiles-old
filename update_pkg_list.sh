#!/bin/bash
  
sudo apt update
sudo apt list --upgradable | less
echo "upgrade pkgs [Y/n]"?
read ANSWER

case $ANSWER in
    "Y" | "y" | "yes" | "Yes" | "YES" ) sudo apt upgrade -y;;
    * ) ;;
esac
