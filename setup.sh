#!/usr/bin/env bash

sudo apt install emacs git tmux nmap traceroute nfs-common openssh-server golang
sudo timedatectl set-timezone Asia/Singapore
#sudo systemctl set-default multi-user.target
#sudo usermod -a -G audio nishant

BASH_FILE=${HOME}/.my_bash
EMACS_FILE=${HOME}/.emacs
TMUX_FILE=${HOME}/.tmux.conf

if [ ! -f "$BASH_FILE" ]; then
    echo "Downloading .my_bash"
    wget -P ${HOME} https://raw.githubusercontent.com/nsatyarthy/env-setup/main/.my_bash
    echo "" >> ${HOME}/.bashrc
    echo "source ${HOME}/.my_bash" >> ${HOME}/.bashrc
    echo "Done"
fi

if [ ! -f "$EMACS_FILE" ]; then
    echo "Downloading .my_bash"
    wget -P ${HOME} https://raw.githubusercontent.com/nsatyarthy/env-setup/main/.emacs
    echo "Done"
fi

if [ ! -f "$TMUX_FILE" ]; then
    echo "Downloading .my_bash"
    wget -P ${HOME} https://raw.githubusercontent.com/nsatyarthy/env-setup/main/.tmux.conf
    echo "Done"
fi
