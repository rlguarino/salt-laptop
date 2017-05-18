download-code-deb:
  cmd.run:
    - name: 'curl -L https://az764295.vo.msecnd.net/stable/7ba55c5860b152d999dda59393ca3ebeb1b5c85f/code_1.7.2-1479766213_amd64.deb  > /tmp/code_1.7.2-1479766213_amd64.deb'

install-code:
  cmd.run:
    - name: dpkg -i /tmp/code_1.7.2-1479766213_amd64.deb

finish-code-install:
  cmd.run:
    - name: apt-get update && apt-get -y install -f
  require:
    - cmd: install-code
