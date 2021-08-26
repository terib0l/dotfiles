# Dotfiles
## Description

This is dotfiles.
Using neovim + tmux like vscode.

## Contents
```
.
├── .bashrc
├── .config/
├── .vim/
├── .vimrc
├── .ide
├── .tmux.conf
├── .xmodmap
├── install
└── README.md
```

## Setup
```
$ git clone https://github.com/terib0l/dotfiles

$ cd dotfiles

$ sudo apt-get install python3

$ sudo apt-get install python3-pip

$ sudo apt-get install neovim

# for denite -> pt
$ sudo apt-get install tcllib

$ sudo apt-get install tmux

$ curl -sL install-node.now.sh/lts | bash
$ curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

$ bash install

$ cd .vim/dein

$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

$ sh installer.sh ./
```
