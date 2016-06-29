include:
  - thevars
  - thebasics

cro:
  user.present:
    - fullname: C. R. Oldham
    - shell: {{ fishloc }}
    - home: /home/cro
    - groups:
      - {{ groups }}
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

/home/cro/.emacs.d:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.emacs.d
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/.profile:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.profile
    - user: cro
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/.zshell:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.zshell
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/.gitconfig:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.gitconfig
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/.config:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.config
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/.bashrc:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.bashrc
    - user: cro
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/vimified/tmp/undo:
  file.directory:
    - user: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/vimified/tmp/backup:
  file.directory:
    - user: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/vimified/tmp/swap:
  file.directory:
    - user: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

/home/cro/vimified/bundle:
  file.directory:
    - user: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: cro
{% else %}
    - group: wheel
{% endif %}

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
