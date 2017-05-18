base:
  '*':
    - user
    - git
  'roles:cloudflare':
    - match: grain
    - git.cloudflare
