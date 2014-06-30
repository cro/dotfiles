#!/bin/bash

# Packages
# Ubuntu/debian
sudo apt-get install vim git zsh python-setuptools vim-gtk gnome-terminal
sudo easy_install pip
sudo pip install virtualenvwrapper

# Arch
# sudo pacman -Syu
# sudo pacman -S vim git zsh python-setuptools vim-gtk gnome-terminal



chsh -s /bin/zsh
sudo echo "export ZDOTDIR=~/.zshell" >> /etc/zsh/zshenv
mkdir -p ~/vimified/tmp/undo
mkdir -p ~/vimified/tmp/backup
mkdir -p ~/vimified/tmp/swap
mkdir -p ~/vimified/bundle

ln -s ~/vimified ~/.vim

git clone https://github.com/cro/dotfiles
ln -s ~/dotfiles/.zshell ~/.zshell
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.bashrc ~/.bashrc

ln -s ~/dotfiles/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +PluginInstall +qall



