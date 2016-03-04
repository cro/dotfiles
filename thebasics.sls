uptodate:
  pkg.uptodate:
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
      - build-essential
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

{% if grains['os'] == 'openSUSE' %}
zypper --non-interactive -t pattern basis_devel:
  cmd.run
{% endif %}

cro:
  user.present:
    - fullname: C. R. Oldham
    - shell: /bin/zsh
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


https://github.com/cro/dotfiles:
  git.latest:
    - target: /home/cro/dotfiles 

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
