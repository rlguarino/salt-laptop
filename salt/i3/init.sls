{% set username = pillar['user']['username'] %}

udiskie:
  pkg.installed

i3:
  pkg.installed

gnome-settings-daemon:
  pkg.installed

scrot:
  pkg.installed

/home/{{ username }}/.config/i3/config:
  file.managed:
    - source: salt://i3/templates/config
    - user: {{ username }}
    - group: {{ username }}
    - makedirs: true

/home/{{ username }}/.config/i3/status.conf:
  file.managed:
    - source: salt://i3/templates/status.conf
    - user: {{ username }}
    - group: {{ username }}
    - makedirs: true

/home/{{ username }}/.config/dunst/dunstrc:
  file.managed:
    - souce: salt://i3/templates/dunstrc
    - user: {{ username }}
    - group: {{ username }}
    - makedirs: true