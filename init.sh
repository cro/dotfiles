#!/bin/bash
# Packages
# Ubuntu/debian
sudo apt-get --assume-yes install vim git zsh python-setuptools vim-gtk gnome-terminal tmux build-essential
sudo easy_install pip
sudo pip install virtualenvwrapper rope ropevim pudb

# Arch
# sudo pacman -Syu
# sudo pacman -S vim git zsh python-setuptools vim-gtk gnome-terminal

git clone https://github.com/cro/dotfiles /root/dotfiles

chsh -s /bin/zsh
sudo echo "export ZDOTDIR=~/.zshell" >> /etc/zsh/zshenv
mkdir -p ~/vimified/tmp/undo
mkdir -p ~/vimified/tmp/backup
mkdir -p ~/vimified/tmp/swap
mkdir -p ~/vimified/bundle

ln -s ~/vimified ~/.vim
rm ~/.profile
rm ~/.bashrc
ln -s ~/dotfiles/.zshell ~/.zshell
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.bashrc ~/.bashrc

ln -s ~/dotfiles/vimified/vimrc ~/.vimrc
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
vim +BundleInstall +qall
