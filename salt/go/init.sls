{% from 'go/map.jinja' import go with context %}
{% set username = pillar['user']['username'] %}

download-go:
  file.managed:
    - name: /tmp/go{{ go.version }}.linux-amd64.tar.gz
    - source: https://storage.googleapis.com/golang/go{{ go.version }}.linux-amd64.tar.gz
    - source_hash: {{ go.source_hash }}

  cmd.run:
    - name: tar -C /usr/local -xzf /tmp/go{{ go.version }}.linux-amd64.tar.gz

go-path:
  file.managed:
    - name: /home/{{ username }}/.bashrc.d/golang
    - source:  salt://go/templates/bashrc
    - template: jinja
    - user: {{ username }}
    - group: {{ username }}
    - context:
      goroot: /usr/local/go
    - require:
      - file: /home/{{ username }}/.bashrc.d
