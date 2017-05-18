atlassian-pkgrepo:
  pkgrepo.managed:
    - name: deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client yakkety main
    - key_url: https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public
    - file: /etc/apt/sources.list.d/atlassian-hipshat.list
    - require:
      - pkg: apt-transport-https

hipchat4:
  pkg.latest:
    - require:
      - pkgrepo: atlassian-pkgrepo
