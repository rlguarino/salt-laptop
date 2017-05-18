{% from 'hipchat/map.jinja' import hipchat with context %}

atlassian-pkgrepo:
  pkg.installed:
    - name: apt-transport-https
  pkgrepo.managed:
    - name: {{ hipchat.source }} 
    - key_url: {{ hipchat.source_key }}
    - file: /etc/apt/sources.list.d/atlassian-hipchat.list
    - require:
      - pkg: apt-transport-https


hipchat:
  pkg.installed:
    - name: {{ hipchat.client }}
