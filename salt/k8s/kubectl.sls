kubectl:
  file.managed:
    - name: /usr/local/bin/kubectl
    - source: https://storage.googleapis.com/kubernetes-release/release/v1.6.4/bin/linux/amd64/kubectl
    - source_hash: sha256=a91c6b028bb3f737898ff003f7f3a3f2d242ea52e89ade1f6ca3ab99170119e5
    - mode: 755
