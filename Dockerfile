# vim:ft=dockerfile

from debian:jessie

env DEBIAN_FRONTEND noninteractive

run apt-get update && apt-get install -y \
    ctags \
    curl \
    git \
    htop \
    make \
    man \
    sudo \
    tcsh \
    tmux \
    tree \
    vim \
    vim-doc \
    wget

run ln -s /usr/lib/git-core/git-* /usr/local/bin/ 

run apt-get clean
run rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

env USER dev
run adduser $USER
user $USER

env HOME /home/$USER
workdir $HOME

run rm -rf $HOME/*
copy dotfiles $HOME/

copy path-to-setup /usr/bin/path-to-setup

env SHELL /bin/bash

user root
run chown -R ${USER}: $HOME
run chsh -s $SHELL $USER

run echo "$USER  ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/$USER

user $USER

cmd $SHELL
