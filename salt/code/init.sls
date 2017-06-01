install-code:
  file.managed:
    - source: https://az764295.vo.msecnd.net/stable/19222cdc84ce72202478ba1cec5cb557b71163de/code_1.12.2-1494422229_amd64.deb
    - source_hash: sha256=2d11fc52df0bd4935d69d27b700eec76e73139ec06a918c8ce6431ff5a736fad
    - name: /tmp/code.deb
  cmd.run:
    - name: dpkg -i /tmp/code.deb

finish-code-install:
  cmd.run:
    - name: apt-get update && apt-get -y install -f
    - onfail:
      - cmd: install-code

{% set username = pillar['user']['username'] %}

/home/{{ username }}/.bashrc.d/code:
  file.managed:
    - user: {{ username }}
    - group: {{ username }}
    - contents:
      - alias code='code -n'
    - require:
      - file: /home/{{ username }}/.bashrc.d
