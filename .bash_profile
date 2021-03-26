# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Vagrant Setup
export VAGRANT_WSL_ENABLE_WINDOWS_ACCESS="1"
export VAGRANT_WSL_WINDOWS_ACCESS_USER=7N44C68
#export VAGRANT_WSL_WINDOWS_ACCESS_USER=terib0l
export VAGRANT_WSL_WINDOWS_ACCESS_USER_HOME_PATH="/mnt/c/Vagrant"
export PATH="$PATH:/mnt/c/Program\ Files/Oracle/VirtualBox"
export PATH="$PATH:/mnt/c/Windows/System32/"
export PATH="$PATH:/mnt/c/Windows/System32/WindowsPowerShell/v1.0/"

# Operate VirtualBox on CLI
alias VBoxManage="/mnt/c/Program\ Files/Oracle/VirtualBox/VBoxManage.exe"
alias sshLab="ssh kali@192.168.56.10"
