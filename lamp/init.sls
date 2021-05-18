lamp:
  pkg.installed:
    - pkgs:
      - ufw
      - firefox
      - apache2
      - apache2-utils
      - mysql-server
      - php

/etc/apache2/mods-enabled/dir.conf:
  file.managed:
    - source: salt://lamp/dir.conf

/var/www/html/index.php:
  file.managed:
    - source: salt://lamp/index.php

/etc/apache2/.htpasswd:
  file.managed:
    - source: salt://lamp/.htpasswd

/etc/apache2/apache2.conf:
  file.managed:
    - source: salt://lamp/apache2.conf

/var/www/html/.htaccess:
  file.managed:
    - source: salt://lamp/.htaccess
