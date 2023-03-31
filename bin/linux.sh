#!/bin/bash

if [ $(uname) = "Linux" ]; then
  echo "Operating system is Linux."
else
  echo "ERROR: Operating system is not Linux." >> linuxsetup.log
  exit
fi

mkdir -p ~/.TRASH

if [ -f ~/.vimrc ]; then
  mv ~/.vimrc ~/.bup\ vimrc
  echo "INFO: Renamed .vimrc to .bup vimrc" >> linuxsetup.log
fi

sudo cp /etc/vimrc ~/.vimrc

sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc

