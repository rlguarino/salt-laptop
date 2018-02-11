install-code:
  file.managed:
    - source: https://az764295.vo.msecnd.net/stable/7c4205b5c6e52a53b81c69d2b2dc8a627abaa0ba/code_1.19.3-1516876437_amd64.deb
    - source_hash: sha256=e9256e80e30ebf48ed62b8f80b1808fb8dae49645e5facf4956a2e1e228a3252
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
