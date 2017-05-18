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
    - node
    - pkgs.common
    - python
    - python.virtualenv
    - vim
  'roles:laptop':
    - match: grain
    - chrome
    - i3
  'roles:cloudflare':
    - match: grain
    - hipchat
#    - openconnect 
