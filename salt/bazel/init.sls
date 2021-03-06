bazel-repo:
  pkgrepo.managed:
    - name: deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8
    - refresh_db: True
    - file: /etc/apt/sources.list.d/bazel.list
  cmd.run:
    - name: curl https://bazel.build/bazel-release.pub.gpg | sudo apt-key add -

bazel:
  pkg.installed:
    - version: latest
