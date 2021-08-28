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

$ sudo apt-get install python3 python3-pip neovim tmux curl

### for denite -> pt
$ sudo apt-get install tcllib

### for coc
$ curl -sL install-node.now.sh/lts | bash
$ curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

### for instant-markdown
$ sudo apt-get install xdg-utils
$ npm -g install instant-markdown-d

$ cd dotfiles

$ bash install

$ cd .vim/dein

$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh

$ sh installer.sh ./
```
