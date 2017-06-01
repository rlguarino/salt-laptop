minikube:
  file.managed:
    - name: /usr/local/bin/minikube
    - source: https://storage.googleapis.com/minikube/releases/v0.19.0/minikube-linux-amd64
    - source_hash: sha256=1b3447b307fa256378c9541731cfc5d5b06128f88dab04b3cfc9deeeceddb2bf
    - mode: 755
