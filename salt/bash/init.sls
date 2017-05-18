
{% set username = pillar['user']['username'] %}

/home/{{ username }}/.bashrc.d:
  file.directory:
    - user: {{ username }}
    - group: {{ username }}

bashrc-{{ username }}:
  file.managed:
    - name: /home/{{ username }}/.bashrc
    - source: salt://bash/templates/bashrc
    - user: {{ username }}
