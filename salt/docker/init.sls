{% from 'docker/map.jinja' import docker with context %}

{% if grains.get('os_family') == "Ubuntu" %}
docker-source:
  pkgrepo.managed:
    - humanname: Docker Repository
    - name: deb https://apt.dockerproject.org/repo/ ubuntu-yakkety main
    - file: /etc/apt/sources.list.d/docker.list
    - require_in:
      - pkg: docker-engine
    - require:
      - cmd: docker-key
    - refresh_db: true

docker-key:
  cmd.run:
    - name: curl -fsSL https://yum.dockerproject.org/gpg | sudo apt-key add -
{% endif %}

docker:
  pkg.installed:
    - name: {{ docker.engine }}
    - refresh: true

docker-group:
  group.present:
    - name: docker
    - addusers:
      - {{ pillar['user']['username'] }}
