set -g WORKON_HOME ~/src/ve
set -g VIRTUALFISH_HOME ~/src/ve
set -g VIRTUALFISH_COMPAT_ALIASES # uncomment for virtualenvwrapper-style commands
set -gx CFLAGS -Qunused-arguments
set -gx CPPFLAGS -Qunused-arguments
. ~/.config/fish/virtualfish/virtual.fish
# optional plugins
. ~/.config/fish/virtualfish/auto_activation.fish
. ~/.config/fish/virtualfish/global_requirements.fish
. ~/.config/fish/functions/vfhooks.fish
. ~/.config/fish/functions/rvm.fish
set fish_key_bindings fish_vi_key_bindings

# Make fish be quiet on start
set -U fish_greeting ""
