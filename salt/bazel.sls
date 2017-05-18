bazel-repo:
  pkgrepo.managed:
    - name: deb [arch=amd64] http://storage.googleapis.com/bazel-apt stable jdk1.8
    - refresh_db: True

bazel:
  pkg.installed:
    - version: latest
