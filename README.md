## Setup

- 0.Pre

```
sudo apt-get install python3
sudo apt-get install python3-pip
sudo apt-get install neovim
```

- 1.Clone and Setup

```
git clone https://github.com/terib0l/dotfiles
cd dotfiles
bash install.sh
```

- 2.Install Dein

```
cd ~/.vim/dein
rm -rf *
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.vim/dein
```
