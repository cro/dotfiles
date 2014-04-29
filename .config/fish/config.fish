set -g WORKON_HOME ~/src/ve
set -g VIRTUALFISH_HOME ~/src/ve
set -g VIRTUALFISH_COMPAT_ALIASES # uncomment for virtualenvwrapper-style commands
. ~/src/virtualfish/virtual.fish
# optional plugins
. ~/src/virtualfish/auto_activation.fish
. ~/src/virtualfish/global_requirements.fish

set fish_key_bindings fish_vi_key_bindings
