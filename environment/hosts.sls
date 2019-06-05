## kvm_disk_config
## type: raidX, where X is 1 or 10.  raid1 must have 2 members entries in the list.  raid10 must have a multiple of 2 members in the list
## type: standard.  May pass a device (e.g. /dev/sdb) as a single member, or pass the special value 'rootfs' as a single member, which will
## just create a directory on the root filesystem at /kvm

hosts:
  controller:
    role: controller
    macs:
      - ac:1f:6b:65:ad:ec
      - ac:1f:6b:65:ae:15
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    ipmi_addresses:
      - 10.100.0.22
      - 10.100.0.23
    kvm_disk_config:
      type: raid10
      members:
        - /dev/sdc
    networks:
      bridge: true
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
  storage:
    role: storage
    macs:
      - ac:1f:6b:b6:df:3a
      - ac:1f:6b:b6:df:29
      - ac:1f:6b:b6:df:26
      - ac:1f:6b:b6:df:4f
      - ac:1f:6b:b6:df:49
      - ac:1f:6b:b6:df:24
      - ac:1f:6b:b6:df:4e
      - ac:1f:6b:b6:df:1a
    interface: ens5f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sdy
    ipmi_addresses:
      - 10.100.0.20
      - 10.100.0.21
      - 10.100.0.31
      - 10.100.0.32
      - 10.100.0.33
      - 10.100.0.34
      - 10.100.0.35
      - 10.100.0.38
    networks:
      bridge: false
      bindings:
        - management: ens5f0
  compute:
    role: compute
    macs:
      - ac:1f:6b:64:4a:9d
      - ac:1f:6b:64:4a:9f
      - ac:1f:6b:64:49:a4
      - ac:1f:6b:65:ae:1f
      - ac:1f:6b:64:4a:a7
      - ac:1f:6b:64:4a:b2
      - ac:1f:6b:64:4a:94
      - ac:1f:6b:64:4a:35
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    ipmi_addresses:
      - 10.100.0.24
      - 10.100.0.25
      - 10.100.0.26
      - 10.100.0.27
      - 10.100.0.28
      - 10.100.0.29
      - 10.100.0.30
      - 10.100.0.35
    networks:
      bridge: false
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
