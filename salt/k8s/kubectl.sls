kubectl:
  file.managed:
    - name: /usr/local/bin/kubectl
    - source: https://storage.googleapis.com/kubernetes-release/release/v1.5.1/bin/linux/amd64/kubectl
    - source_hash: sha1=f0edb598ee6ebe3c32287d8a9c4a6c0b6f24aa70
    - mode: 755
