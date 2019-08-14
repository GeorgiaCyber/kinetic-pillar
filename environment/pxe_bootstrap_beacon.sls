## This file controls how the pxe server notifies the salt master
## about new minions that will come online soon.  It generally
## does not need to be edited

beacons:
    inotify:
      - files:
          /var/www/html/pending_hosts:
            mask:
              - create
            recurse: true
            auto_add: true
