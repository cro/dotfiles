#!/bin/zsh
export ZDOTDIR=~/.zshell
export RCS=1
export HISTFILE=~/.zshell/history
export SAVEHIST=100

# Add virtualenvwrapper aliases
if [[ -e /usr/local/bin/virtualenvwrapper.sh ]]
source /usr/local/bin/virtualenvwrapper.sh
else
source /usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/src/ve

if [ `uname` = "Darwin" ]; then
    [[ -s "$HOME/.rvm/scripts/rvm"  ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
fi
# Starting keychain on remote systems seems to really
# foul up the agent.  Comment out until I can figure out what's
# up
# if [ `uname` = "Linux" ]; then
#    eval `/usr/bin/keychain --eval id_dsa github_dsa id_rsa_ansible`
# fi
