/usr/local/bin/docker-compose:
  file.managed:
    - source:  https://github.com/docker/compose/releases/download/1.9.0/run.sh
    - source_hash: sha256=7e1c028049b66fdb379e41616f33f33bf3794932631b384b176bb52cd2d23206
    - mode: 777
