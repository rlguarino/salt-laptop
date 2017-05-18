{% set username = pillar['user']['username'] %}

install-virtualenv:
  cmd.run:
    - name: pip install virtualenv virtualenvwrapper
    - require:
      - pkg: pip

/home/{{ username }}/.bashrc.d/python-virtualenv:
  file.managed:
    - source:  salt://python/templates/bashrc
    - template: jinja
    - user: {{ username }}
    - group: {{ username }}
    - require:
      - file: /home/{{ username }}/.bashrc.d
