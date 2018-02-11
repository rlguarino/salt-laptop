minikube:
  file.managed:
    - name: /usr/local/bin/minikube
    - source: https://storage.googleapis.com/minikube/releases/v0.25.0/minikube-linux-amd64
    - source_hash: sha256=5676f2d4f37f1c6f9cf99d56c7e1a3016976d657f9715e8cb255667a0c5803c1
    - mode: 755

/usr/local/bin/docker-machine-driver-kvm2:
  file.managed:
    - source: https://storage.googleapis.com/minikube/releases/v0.25.0/docker-machine-driver-kvm2
    - source_hash: sha256=30cc9269e8ddfab24640796735ec7e28aa97e95600ac44f5f85839cc0801d189
    - mode: 755