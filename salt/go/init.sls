{% from 'go/map.jinja' import go with context %}
{% set username = pillar['user']['username'] %}

include:
  - bash

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

/usr/local/bin/dep:
  file.managed:
    - source: https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64
    - source_hash: sha256=31144e465e52ffbc0035248a10ddea61a09bf28b00784fd3fdd9882c8cbb2315
    - mode: 755
    - replace: True