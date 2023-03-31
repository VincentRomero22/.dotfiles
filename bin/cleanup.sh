#!/bin/bash

rm ~/.vimrc

sed -i '/source ~\/.dotfiles\/bashrc custom/d' ~/.bashrc
rm -r ~/".TRASH"

