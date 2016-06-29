{% if grains['os_family'] == 'FreeBSD' %}
{% set zshloc='/usr/local/bin/zsh' %}
{% set fishloc='/usr/local/bin/fish' %}
{% set base='/usr/local' %}
{% set groups='wheel' %}
{% elsif grains['os_family'] == 'MacOS' %}
{% set zshloc='/opt/local/bin/zsh' %}
{% set fishloc='/opt/local/bin/fish' %}
{% set groups='wheel' %}
{% set base='' %}
{% else %}
{% set zshloc='/usr/bin/zsh' %}
{% set fishloc='/usr/bin/fish' %}
{% set groups='sudoers' %}
{% set base='' %}
{% endif %}

