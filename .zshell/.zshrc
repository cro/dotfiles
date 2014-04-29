#
# rc file for zsh 2.1
#

umask 007

export PAGER=/usr/bin/less
export EDITOR=/usr/local/bin/mvim
export LESS=-Mix4R
set _HNAME = `hostname`

export LSCOLORS="gxfxcxdxbxegedabagacad"

alias ls='ls -GFC'
alias	la='ls -agl'
alias	sl='ls -FCa'
alias	h='history -14'
alias	l='ls -FC'
alias	c=clear
alias   rm='/bin/rm -i'
alias	pd='popd'
alias   sup='rvm use ruby-1.9.3; cd /Users/cro/src/sup; SUP_LOG_LEVEL=debug ruby -I lib -w bin/sup'

# where to look for function definitions
# fpath=(~/func)

# use hard limits, except for a smaller stack and no core dumps
unlimit
limit stack 8192
limit core 0
limit -s

# setenv for csh junkies (including tset)
setenv() { export $1=$2 }

# the rest is for interactive shells only
if [[ ! -o interactive ]]
then
	return
fi

autoload -U compinit

# filename completion suffixes to ignore
fignore=(.o .pro .old)


# prompt on the right side of the screen
if ( [[ $TERM == 'emacs' ]] || [[ $TERM == xemacs ]] ) {
	PROMPT='%~ %m[%h]%# '
	RPROMPT=''
} elif ( [[ $WINDOWID != "" ]] ) {
    PROMPT='%l %m[%h]%# '
    RPROMPT=' %~'
    print -Pn ']2;%m:%~]1;%m:%~'
    chpwd ()  { print -Pn ']2;%m:%~]1;%m:%~'  } 
    alias g='gnuclient -q '
} else {
	PROMPT='%l %m[%h]%# '
	RPROMPT=' %~'
}

# functions to autoload
# autoload cx acx mere yu yp randline proto namedir ilogin

HISTSIZE=600
DIRSTACKSIZE=50

# lots of options
setopt notify globdots correct pushdtohome cdablevars autolist \
	sunkeyboardhack correctall autocd recexact longlistjobs \
	autoresume histignoredups pushdsilent noclobber \
	autopushd pushdminus extendedglob rcquotes
unsetopt bgnice

# watch for my friends
#watch=($(cat ~/.friends))
#WATCHFMT='%n %a %l from %m at %t.'
#LOGCHECK=0


# some nice bindings

#bindkey '^X^Z' universal-argument ' ' magic-space
#bindkey '^X^A' vi-find-prev-char-skip
#bindkey '^Z' accept-and-hold
#bindkey -s '\M-/' \\\\
#bindkey -s '\M-=' \|
bindkey "[7~" beginning-of-line
bindkey "[8~" end-of-line





# The following lines were added by compinstall
_compdir=/usr/share/zsh/functions
[[ -z $fpath[(r)$_compdir] ]] && fpath=($fpath $_compdir)
autoload -U compinit
compinit
# compconf completer=_complete:_correct:_approximate
# End of lines added by compinstall
#

source $ZDOTDIR/.zshrc.`uname`
