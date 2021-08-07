# Dotfiles
## Description

This is dotfiles.

## Contents
```
.
├── .bashrc
├── .config/
├── .gitconfig
├── .vim/
├── .vimrc
├── README.md
└── install
```

## Setup
```
$ git clone https://github.com/terib0l/dotfiles

$ cd dotfiles

$ sudo apt-get install python3

$ sudo apt-get install python3-pip

$ sudo apt-get install neovim

$ bash install

$ cp ~/.vimrc ~/.config/nvim/init.vim

$ cd ~/.vim/dein

$ rm -rf *

$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

$ sh installer.sh ./

-*- Copy some part of output to ~/.config/nvim/init.vim -*-
$ export MYVIMRC=path/to/dotfiles/.config/nvim/init.vim
```
