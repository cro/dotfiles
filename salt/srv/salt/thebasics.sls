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
{% if grains['os'] == 'Arch' %}
      - base-devel
      - python2-pip
      - python2-pygit2
      - python2-setuptools
{% endif %}
{% if grains['os'] == 'openSUSE' %}
zypper --gpg-auto-import-keys --non-interactive -t pattern basis_devel:
  cmd.run
{% endif %}

{{ base }}/etc/zsh/zshenv:
  file.touch:
    - makedirs: True

zdotdir:
  file.line:
    - name: {{ base }}/etc/zsh/zshenv
    - content: export ZDOTDIR=~/.zshell
    - mode: ensure



