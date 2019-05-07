beacons:
    inotify:
      - files:
          /var/www/html/pending_hosts:
            mask:
              - create
            recurse: true
            auto_add: true
