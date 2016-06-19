{% if grains['os_family'] == 'FreeBSD' %}
{% set zshloc='/usr/local/bin/zsh' %}
{% set fishloc='/usr/local/bin/fish' %}
{% else %}
{% set zshloc='/usr/bin/zsh' %}
{% set fishloc='/usr/bin/fish' %}
{% endif %}

uptodate:
  pkg.upgrade:
    - refresh: True

basic_pkgs:
  pkg.installed:
    - pkgs:
      - git
      - zsh
      - fish
      - vim
      - tmux
      - mosh
{% if grains['os'] == 'Ubuntu' or grains['os'] == 'Debian' %}
      - build-essential
      - python-dev
      - python-setuptools
{% endif %}
{% if grains['os'] == 'openSUSE' %}
      - python-devel
      - python-pip
      - python-pygit2
      - python-setuptools
{% endif %}
{% if grains['os'] == 'Arch' %}
      - base-devel
      - python2-pip
      - python2-pygit2
      - python2-setuptools
{% endif %}
{% if grains['os'] == 'openSUSE' %}
zypper --non-interactive -t pattern basis_devel:
  cmd.run
{% endif %}

/etc/zsh/zshenv:
  file.touch:
    - makedirs: True

zdotdir:
  file.line:
    - name: /etc/zsh/zshenv
    - content: export ZDOTDIR=~/.zshell
    - mode: ensure

cro:
  user.present:
    - fullname: C. R. Oldham
    - shell: {{ fishloc }}
    - home: /home/cro
    - groups:
      - wheel
    - createhome: True

# Set sudo for cro
git_user_name:
  git.config_set:
    - user: cro
    - name: user.name
    - value: C. R. Oldham

git_user_email:
  git.config_set:
    - user: cro
    - name: user.email
    - value: cro@ncbt.org


/home/cro/.profile:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.profile
    - user: cro
    - group: cro

/home/cro/.zshell:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.zshell
    - user: cro
    - group: cro

/home/cro/.gitconfig:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.gitconfig
    - user: cro
    - group: cro

/home/cro/.config:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.config
    - user: cro
    - group: cro

/home/cro/.bashrc:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.bashrc
    - user: cro
    - group: cro

/home/cro/vimified/tmp/undo:
  file.directory:
    - user: cro
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/home/cro/vimified/tmp/backup:
  file.directory:
    - user: cro
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/home/cro/vimified/tmp/swap:
  file.directory:
    - user: cro
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/home/cro/vimified/bundle:
  file.directory:
    - user: cro
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/home/cro/.vim:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/vimified

/home/cro/.vimrc:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/vimified/vimrc

https://github.com/gmarik/Vundle.vim.git:
  git.latest:
    - target: /home/cro/vim/bundle/vundle

/usr/bin/vim +BundleInstall +qall:
  cmd.run:
    - user: cro
