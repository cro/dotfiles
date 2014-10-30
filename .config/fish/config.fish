set -g WORKON_HOME ~/src/ve
set -g VIRTUALFISH_HOME ~/src/ve
set -g VIRTUALFISH_COMPAT_ALIASES # uncomment for virtualenvwrapper-style commands
set -gx PATH ~/node_modules/.bin $PATH
set -gx EDITOR /opt/local/bin/vim
# . ~/.config/fish/virtualfish/virtual.fish
# optional plugins
# . ~/.config/fish/virtualfish/auto_activation.fish
# . ~/.config/fish/virtualfish/global_requirements.fish
# . ~/.config/fish/functions/vfhooks.fish
# . ~/.config/fish/functions/rvm.fish
set fish_key_bindings fish_vi_key_bindings

# Make fish be quiet on start
set -U fish_greeting ""

# Set PAR options
# set -xg PARINIT 'rTbgqR B=.,?_A_a Q=_s>|'

if test -f ~/.config/fish/config.fish.(uname)
    . ~/.config/fish/config.fish.(uname)
end

# Can't put this in github
if test -f ~/.ec2/api
    . ~/.ec2/api
end

# Paths to your tackle
set fish_path ~/.tackle ~/.tacklebox

# Theme
set fish_theme entropy

# Which modules would you like to load? (modules can be found in ~/.tackle/modules/*)
# Custom modules may be added to ~/.tacklebox/modules/
# Example format: set fish_modules virtualfish virtualhooks

set fish_modules virtualfish virtualhooks

# Which plugins would you like to enable? (plugins can be found in ~/.tackle/plugins/*)
# Custom plugins may be added to ~/.tacklebox/plugins/
# Example format: set fish_plugins python extract
set fish_plugins python extract

# Load Tacklebox configuration
. ~/.tacklebox/tacklebox.fish

