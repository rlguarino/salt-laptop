
include:
 - mia

extend:
  mia:
    service:
      - watch:
        - cmd: something

something:
  cmd.run:
    - name : echo "something else"