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
      vlan: false
      interfaces:
        enp97s0f0:
          network: management
          primary: true
          bridge: true
          vlan: false
        enp97s0f1:
          network: sfe
          primary: false
          bridge: true
          vlan: false
        enp113s0f0:
          network: public
          primary: false
          bridge: true
          vlan: false
        enp113s0f1:
          network: private
          primary: false
          bridge: true
          vlan: false
  storage:
    role: storage
    macs:
      - 00:25:90:5f:5f:7a
      - 00:25:90:5f:5f:2e
      - 00:25:90:5f:5e:d6
      - 00:25:90:5f:5e:7e
      - 00:25:90:5f:5e:00
      - 00:25:90:5f:5e:c2
      - 00:25:90:5f:5f:02
      - 00:25:90:5f:5f:c8
    interface: enp94s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme1n1
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
      - 0c:c4:7a:fb:f3:d0
      - 0c:c4:7a:fb:f2:80
      - 0c:c4:7a:fb:f1:a8
      - 0c:c4:7a:fb:f2:fc
      - 0c:c4:7a:fb:f2:84
      - 0c:c4:7a:fb:f2:1c
      - 0c:c4:7a:fb:f1:0c
      - 0c:c4:7a:fb:f3:e4
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
      - 10.100.0.37
    networks:
      bridge: false
      bindings:
        - management: enp97s0f0
        - sfe: enp97s0f1
        - public: enp113s0f0
        - private: enp113s0f1
