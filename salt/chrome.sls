download-google-chrome-deb:
  cmd.run:
    - name: 'curl -L https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb  > /tmp/google-chrome-stable_current_amd64.deb'
    - unless: dpkg-query -s google-chrome-stable

install-google-chrome:
  cmd.run:
    - name: dpkg -i /tmp/google-chrome-stable_current_amd64.deb
    - onchanges:
      - cmd: download-google-chrome-deb

finish-google-chrome-install:
  cmd.run:
    - name: apt-get update && apt-get -y install -f
    - onchanges:
      - cmd: install-google-chrome
