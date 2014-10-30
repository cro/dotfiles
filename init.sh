#!/bin/bash
# Packages
# Ubuntu/debian
sudo apt-get --assume-yes install vim git zsh python-setuptools vim-gtk gnome-terminal tmux build-essential python-devel
sudo easy_install pip
sudo pip install virtualenvwrapper rope ropevim pudb

#
# RH/CentOS
sudo yum install vim git zsh python-setuptools gnome-terminal tmux python-devel zsh
sudo yum groupinstall "Development Tools"
sudo easy_install pip
sudo pip install virtualenvwrapper rope ropevim pudb


# Arch
# sudo pacman -Syu
# sudo pacman -S vim git zsh python-setuptools vim-gtk gnome-terminal

# Get my dotfiles
git clone https://github.com/cro/dotfiles /root/dotfiles

# Change my shell to zsh
if [ -e /bin/zsh ]; then
    chsh -s /bin/zsh
else
    chsh -s /usr/bin/zsh
fi

# Make sure zsh knows where to look for startup files
if [ -e /etc/zsh/zshenv ]; then
    sudo echo "export ZDOTDIR=~/.zshell" >> /etc/zsh/zshenv
fi

# Get rid of default files
rm ~/.profile
rm ~/.bashrc

ln -s ~/dotfiles/.zshell ~/.zshell
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.config ~/.config
ln -s ~/dotfiles/.bashrc ~/.bashrc

mkdir -p ~/vimified/tmp/undo
mkdir -p ~/vimified/tmp/backup
mkdir -p ~/vimified/tmp/swap
mkdir -p ~/vimified/bundle

ln -s ~/vimified ~/.vim
ln -s ~/dotfiles/vimified/vimrc ~/.vimrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

vim +BundleInstall +qall
