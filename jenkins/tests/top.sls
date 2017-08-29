base:
  'os_family:Debian':
    - match: grain
    - java
    - jenkins
    - nginx.ng
    - nginx.ng.config
    - nginx.ng.service
    - jenkins.nginx
