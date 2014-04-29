#!/bin/zsh
export ZDOTDIR=~/.zshell
export RCS=1
export HISTFILE=~/.zshell/history
export SAVEHIST=100

# Add virtualenvwrapper aliases
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/src/ve

if [ `uname` = "Linux" ]; then

fi
