## kvm_disk_config
## type: raidX, where X is 1 or 10.  raid1 must have 2 members entries in the list.  raid10 must have a multiple of 2 members in the list
## type: standard.  May pass a device (e.g. /dev/sdb) as a single member, or pass the special value 'rootfs' as a single member, which will
## just create a directory on the root filesystem at /kvm

hosts:
  controller:
    role: controller
    macs:
      - 0c:c4:7a:fb:f3:ac
      - 0c:c4:7a:fb:f0:f0
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
    ipmi_addresses:
      - 10.100.0.22
      - 10.100.0.23
    kvm_disk_config:
      type: standard
      members:
        - rootfs
    networks:
      bridge: true
      bindings:
        - management: enp97s0f0
        - sfe: enp97s0f1
        - public: enp113s0f0
        - private: enp113s0f1
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
    interface: enp94s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
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
        - management: enp94s0f0
        - sfe: enp94s0f1
        - sbe: enp175s0f0
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
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
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
        - management: enp97s0f0
        - sfe: enp97s0f1
        - public: enp113s0f0
        - public: enp113s0f1
