{% set username = pillar['user']['username'] %}

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