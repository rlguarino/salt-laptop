kubectl:
  file.managed:
    - name: /usr/local/bin/kubectl
    - source: https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl
    - source_hash: sha256=9150691c3c9d0c3d6c0c570a81221f476e107994b35e33c193b1b90b7b7c0cb5
    - mode: 755
