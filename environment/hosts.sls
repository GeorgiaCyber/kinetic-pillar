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
      - 0c:c4:7a:22:ad:a8
    interface: ens5f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sdy
    ipmi_addresses:
      - 10.10.2.20
    networks:
      bridge: false
      bindings:
        - management: ens5f0
  compute:
    role: compute
    macs:
      - 0c:c4:7a:f9:8e:18
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    ipmi_addresses:
      - 10.10.0.43
    networks:
      bridge: false
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
