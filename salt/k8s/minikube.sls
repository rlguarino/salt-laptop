minikube:
  file.managed:
    - name: /usr/local/bin/minikube
    - source: https://storage.googleapis.com/minikube/releases/v0.14.0/minikube-linux-amd64
    - source_hash: sha256=a9e8423474de6046c672db5b035475fc034223652b081d1accba89af7da5a5e0
    - mode: 755
