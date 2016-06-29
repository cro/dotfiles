include:
  - thevars
  - thebasics

root:
  user.present:
    - shell: {{ fishloc }}

# Set sudo for cro
git_user_name:
  git.config_set:
    - user: root
    - name: user.name
    - value: C. R. Oldham

git_user_email:
  git.config_set:
    - user: root
    - name: user.email
    - value: cro@ncbt.org

/root/.emacs.d:
  file.symlink:
    - force: True
    - target: /root/dotfiles/.emacs.d
    - user: root
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/.profile:
  file.symlink:
    - force: True
    - target: /root/dotfiles/.profile
    - user: root
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/.zshell:
  file.symlink:
    - force: True
    - target: /root/dotfiles/.zshell
    - user: root
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/.gitconfig:
  file.symlink:
    - force: True
    - target: /root/dotfiles/.gitconfig
    - user: root
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/.config:
  file.symlink:
    - force: True
    - target: /home/cro/dotfiles/.config
    - user: root
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/.bashrc:
  file.symlink:
    - force: True
    - target: /root/dotfiles/.bashrc
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/vimified/tmp/undo:
  file.directory:
    - user: root
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True
{% if grains['os_family'] != 'FreeBSD' and grains['os_family'] != 'MacOS' %}
    - group: root
{% else %}
    - group: wheel
{% endif %}

/root/vimified/tmp/backup:
  file.directory:
    - user: root
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/root/vimified/tmp/swap:
  file.directory:
    - user: root
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/root/vimified/bundle:
  file.directory:
    - user: root
    - group: cro
    - dir_mode: 755  
    - file_mode: 644
    - makedirs: True

/root/.vim:
  file.symlink:
    - force: True
    - target: /root/dotfiles/vimified

/root/.vimrc:
  file.symlink:
    - force: True
    - target: /root/dotfiles/vimified/vimrc

https://github.com/gmarik/Vundle.vim.git:
  git.latest:
    - target: /root/vim/bundle/vundle

/usr/bin/vim +BundleInstall +qall:
  cmd.run:
    - user: root
