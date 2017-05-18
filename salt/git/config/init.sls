/home/{{ pillar['user']['username'] }}/.gitconfig:
  file.managed:
    - source: salt://git/templates/gitconfig.jinja
    - user: {{ pillar['user']['username'] }}
    - group: {{ pillar['user']['username'] }}
    - template: jinja
    - context:
        user_name: {{ pillar['git']['user']['name'] }}
        user_email: {{ pillar['git']['user']['email'] }}
