#!/bin/bash
# Get my dotfiles
# This is already done if we have this file :-)
# git clone https://github.com/cro/dotfiles /root/dotfiles

# Packages
# Ubuntu/debian
grep -q Ubuntu /etc/issue || grep -q Debian /etc/issue
if [ $? == 0 ]
then
    sudo apt-get update
    sudo apt-get -y install aptitude
    sudo aptitude -y full-upgrade
    sudo apt-get --assume-yes install salt-minion
fi

grep -q "CentOS" /etc/redhat-release
if [ $? == 0 ]
then
# RH/CentOS
    yum upgrade -y
    sudo yum install -y epel-release salt-minion
    sudo yum groupinstall -y "Development Tools"
fi

# Arch
grep -q Arch /etc/issue
if [ $? == 0 ]
then
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm salt-minion
fi

# Tumbleweed
grep -q openSUSE /etc/issue 
if [ $? == 0 ]
then
    sudo zypper --gpg-auto-import-keys -y dup
    sudo zypper --gpg-auto-import-keys -y install salt-minion
fi

# FreeBSD
uname -a | grep -q FreeBSD
if [ $? == 0 ]
then
    export ASSUME_ALWAYS_YES=yes
    pkg upgrade
    pkg install bash py27-salt
fi

cd ~
CWD=`pwd`
export SALT_CONFIG_DIR=$CWD/dotfiles/salt
mkdir -p $CWD/dotfiles/salt/etc/salt
mkdir -p $CWD/dotfiles/salt/var/cache/salt
mkdir -p $CWD/dotfiles/salt/var/log/salt
echo "
file_roots:
  base:
    - $CWD/dotfiles/salt/srv/salt

pillar_roots:
  base:
    - $CWD/dotfiles/salt/srv/pillar

file_client: local

root_dir: $CWD/dotfiles/salt" > $CWD/dotfiles/salt/etc/salt/minion

salt-call --local state.sls thebasics

## Change my shell to zsh
#if [ -e /bin/zsh ]
#then
#    chsh -s /bin/zsh
#fi
#
#if [ -e /usr/bin/zsh ]
#then
#    chsh -s /usr/bin/zsh
#fi
#
#grep -q "export ZDOTDIR" /etc/zsh/zshenv
#if [ $? == 0 ]
#then
#    sudo /bin/bash -c 'echo "export ZDOTDIR=~/.zshell" >> /etc/zsh/zshenv'
#fi
#
## Get rid of default files
#rm ~/.profile
#rm ~/.bashrc
#
#
## NOTE all below depends on having CD'ed into the user's homedir
## this is not always /home/USER, for root it is often /root
## Furthermore, not every distro sets $HOME
#cd ~
#
#ln -s dotfiles/.zshell .zshell
#ln -s dotfiles/.profile .profile
#ln -s dotfiles/.gitconfig .gitconfig
#ln -s dotfiles/.config .config
#ln -s dotfiles/.bashrc .bashrc
#
#mkdir -p vimified/tmp/undo
#mkdir -p vimified/tmp/backup
#mkdir -p vimified/tmp/swap
#mkdir -p vimified/bundle
#
#ln -s vimified .vim
#ln -s dotfiles/vimified/vimrc .vimrc
#ln -s dotfiles/.emacs.d .emacs.d
#ln -s dotfiles/.spacemacs .spacemacs
#
#git clone https://github.com/gmarik/Vundle.vim.git .vim/bundle/vundle
#  
#vim +BundleInstall +qall
