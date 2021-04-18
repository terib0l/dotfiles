#!/bin/bash

if [ -d ~/"dotfiles-backup" ]; then
	:
else
	mkdir ~/"dotfiles-backup"
fi

for f in .??*
do
	[[ "$f" == ".git" ]] && continue
	[[ "$f" == ".DS_Store " ]] && continue

	if [ -f ~/"$f" ] || [ -d ~/"$f" ]; then
		mv ~/"$f" ~/dotfiles-backup/
	else
		:
	fi

	ln -s $(pwd)/$f ~/$f
done

echo -e "\nBackup move to ~/dotfiles-backup\n"
echo -e "Done [dotfiles setup]\n"
