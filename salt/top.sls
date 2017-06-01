base:
  '*':
    - bash
    - bazel
    - docker
    - docker.compose
    - emacs
    - go
    - git
    - git.config
    - kvm
    - k8s.kubectl
    - k8s.minikube
    - node-js
    - pkgs.common
    - python
    - python.virtualenv
    - silversearcher
    - vim
  'roles:graphical':
    - match: grain
    - chrome
    - i3
    - code
  'roles:cloudflare':
    - match: grain
    - hipchat
#    - openconnect 
