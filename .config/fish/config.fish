set -g WORKON_HOME ~/src/ve
set -g VIRTUALFISH_HOME ~/src/ve
set -g VIRTUALFISH_COMPAT_ALIASES # uncomment for virtualenvwrapper-style commands
set -gx PATH ~/bin ~/dotfiles/bin ~/node_modules/.bin $PATH
set -gx EDITOR /usr/local/bin/emacsclient

# eval (/usr/bin/python -m virtualfish compat_aliases)

set fish_key_bindings fish_vi_key_bindings

# Make fish be quiet on start
set -U fish_greeting ""

# Set PAR options
# set -xg PARINIT 'rTbgqR B=.,?_A_a Q=_s>|'

# Can't put this in github
if test -f ~/.ec2/api
    source ~/.ec2/api
end

# Paths to your tackle
set tacklebox_path ~/.tackle

# Theme
set tacklebox_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set tacklebox_modules virtualfish virtualhooks

set tacklebox_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set fish_plugins python extract
set tacklebox_plugins python extract

# Load Tacklebox configuration
source ~/.tacklebox/tacklebox.fish

if test -f ~/.config/fish/config.fish.(uname)
    source ~/.config/fish/config.fish.(uname)
end
