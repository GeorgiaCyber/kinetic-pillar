beacons:
  inotify:
    - files:
        /var/log/apt-cacher-ng/apt-cacher.err:
          mask:
            - modify
