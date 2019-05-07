## partman_config
## method is passed to d-i partman-auto/method so it needs to be an appropriate value for example: lvm or raid
## type will be used for the type of raid 1 or 10
## count is the number of disks to use in the array
## spares is the number of spares for the array
## disks contains the disks/partitions to use and needs to be seperated by a # (e.g "/dev/nvme0n1p2#/dev/nvme1n1p2")

## kvm_disk_config
## type: raidX, where X is 1 or 10.  raid1 must have 2 members entries in the list.  raid10 must have a multiple of 2 members in the list
## type: standard.  May pass a device (e.g. /dev/sdb) as a single member, or pass the special value 'rootfs' as a single member, which will
## just create a directory on the root filesystem at /kvm

hosts:
  cache:
    role: cache
    macs:
      - 0c:c4:7a:c7:62:82
    interface: ens2f0
    proxy: "''"
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.3.250
    networks:
      bridge: false
      bindings:
        - management: ens2f0
        - public: ens2f1
  controller:
    role: controller
    macs:
      - 0c:c4:7a:a5:cb:0a
      - 0c:c4:7a:f9:89:b0
      - 0c:c4:7a:a5:cd:6e
      - 0c:c4:7a:f9:89:a4
      - 0c:c4:7a:a5:cb:2e
      - 0c:c4:7a:f9:89:9c
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda /dev/sdb
    partman_config:
      method: raid
      type: "1"
      count: "2"
      spares: "0"
      disks: "/dev/sda2#/dev/sdb2"
    ipmi_addresses:
      - 10.10.0.10
      - 10.10.0.11
      - 10.10.0.12
      - 10.10.0.13
      - 10.10.0.14
      - 10.10.0.15
    kvm_disk_config:
      type: raid10
      members:
        - /dev/sdc
        - /dev/sdd
        - /dev/sde
        - /dev/sdf
        - /dev/sdg
        - /dev/sdh
        - /dev/sdi
        - /dev/sdj
    networks:
      bridge: true
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
  controllerv2:
    role: controller
    macs:
      - 0c:c4:7a:fb:ea:30
      - 0c:c4:7a:fb:eb:88
      - 0c:c4:7a:fb:eb:b0
      - 0c:c4:7a:fb:eb:80
      - 0c:c4:7a:fb:eb:b8
      - 0c:c4:7a:fb:eb:7c
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1 /dev/nvme1n1 /dev/nvme2n1 /dev/nvme3n1
    partman_config:
      method: raid
      type: "10"
      count: "4"
      spares: "0"
      disks: "/dev/nvme0n1p2#/dev/nvme1n1p2#/dev/nvme2n1p2#/dev/nvme3n1p2"
    ipmi_addresses:
      - 10.10.0.8
      - 10.10.0.9
      - 10.10.0.16
      - 10.10.0.17
      - 10.10.0.18
      - 10.10.0.19
    kvm_disk_config:
      type: standard
      members:
        - rootfs
    networks:
      bridge: true
      bindings:
        - management: enp97s0f0
        - sfe: enp113s0f0
        - private: enp113s0f1
        - public: enp97s0f1
  storage:
    role: storage
    macs:
      - 0c:c4:7a:22:ad:a8
      - 0c:c4:7a:22:ad:20
      - 0c:c4:7a:22:ad:94
      - 0c:c4:7a:22:ad:48
      - 0c:c4:7a:22:ad:b0
      - 0c:c4:7a:22:ad:0c
      - 0c:c4:7a:22:ad:98
      - 0c:c4:7a:22:ad:2c
      - 0c:c4:7a:22:ad:ac
      - 0c:c4:7a:22:ad:30
      - 0c:c4:7a:22:ad:4c
      - 0c:c4:7a:22:ad:44
      - 0c:c4:7a:22:ad:58
      - 0c:c4:7a:22:ad:1c
      - 0c:c4:7a:22:ad:38
      - 0c:c4:7a:22:ad:90
    interface: ens5f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sdy
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.2.20
      - 10.10.2.21
      - 10.10.2.22
      - 10.10.2.23
      - 10.10.2.24
      - 10.10.2.25
      - 10.10.2.26
      - 10.10.2.27
      - 10.10.2.28
      - 10.10.2.29
      - 10.10.2.30
      - 10.10.2.31
      - 10.10.2.32
      - 10.10.2.33
      - 10.10.2.34
      - 10.10.2.35
    networks:
      bridge: false
      bindings:
        - management: ens5f0
  storagev2:
    role: storage
    macs:
      - ac:1f:6b:4e:35:00
      - ac:1f:6b:4d:ae:d4
      - ac:1f:6b:4d:af:ac
      - ac:1f:6b:4d:af:da
      - ac:1f:6b:4e:34:84
      - ac:1f:6b:4e:34:e6
      - ac:1f:6b:4e:a0:ce
      - ac:1f:6b:4d:af:54
      - ac:1f:6b:4e:34:ee
      - ac:1f:6b:4e:34:e0
      - ac:1f:6b:4d:ae:dc
      - ac:1f:6b:4e:35:2c
      - ac:1f:6b:4d:ae:fc
      - ac:1f:6b:4e:34:e4
      - ac:1f:6b:4e:34:e8
      - ac:1f:6b:4d:af:0c
      - ac:1f:6b:4d:af:46
      - ac:1f:6b:4d:af:44
      - ac:1f:6b:4d:af:68
      - ac:1f:6b:4e:a1:5a
      - ac:1f:6b:4d:ae:d0
      - ac:1f:6b:4d:af:34
      - ac:1f:6b:4e:34:ea
      - ac:1f:6b:4e:34:ec
    interface: enp94s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.2.36
      - 10.10.2.37
      - 10.10.2.38
      - 10.10.2.39
      - 10.10.2.40
      - 10.10.2.41
      - 10.10.2.42
      - 10.10.2.43
      - 10.10.2.44
      - 10.10.2.45
      - 10.10.2.46
      - 10.10.2.47
      - 10.10.2.48
      - 10.10.2.49
      - 10.10.2.50
      - 10.10.2.51
      - 10.10.2.52
      - 10.10.2.53
      - 10.10.2.54
      - 10.10.2.55
      - 10.10.2.56
      - 10.10.2.57
      - 10.10.2.58
      - 10.10.2.59
    networks:
      bridge: false
      bindings:
        - management: enp94s0f0
        - sfe: enp94s0f1
        - sbe: enp175s0f0
  compute:
    role: compute
    macs:
      - 0c:c4:7a:3b:6e:d0
      - 0c:c4:7a:a5:cc:16
      - 0c:c4:7a:a5:cb:16
      - 0c:c4:7a:a5:d0:c2
      - 0c:c4:7a:a5:cd:86
      - 0c:c4:7a:a5:cb:1a
      - 0c:c4:7a:a5:cc:2e
      - 0c:c4:7a:3b:6e:6c
      - 0c:c4:7a:a5:cc:02
      - 0c:c4:7a:3b:6f:f0
      - 0c:c4:7a:a5:cc:e6
      - 0c:c4:7a:a5:cf:7a
      - 0c:c4:7a:a5:cc:66
      - 0c:c4:7a:a5:cb:0e
      - 0c:c4:7a:a5:cb:06
      - 0c:c4:7a:a5:cb:4e
      - 0c:c4:7a:f9:87:b0
      - 0c:c4:7a:f9:87:bc
      - 0c:c4:7a:f9:8e:08
      - 0c:c4:7a:f9:8e:14
      - 0c:c4:7a:f9:8d:fc
#      - 0c:c4:7a:f9:8e:10 used for containers currently
      - 0c:c4:7a:f9:8e:04
      - 0c:c4:7a:f9:8e:18
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.0.20
      - 10.10.0.21
      - 10.10.0.22
      - 10.10.0.23
      - 10.10.0.24
      - 10.10.0.25
      - 10.10.0.26
      - 10.10.0.27
      - 10.10.0.28
      - 10.10.0.29
      - 10.10.0.30
      - 10.10.0.31
      - 10.10.0.32
      - 10.10.0.33
      - 10.10.0.34
      - 10.10.0.35
      - 10.10.0.36
      - 10.10.0.37
      - 10.10.0.38
      - 10.10.0.39
      - 10.10.0.40
#      - 10.10.0.41 used for containers currently
      - 10.10.0.42
      - 10.10.0.43
    networks:
      bridge: false
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
  computev2:
    role: compute
    macs:
      - 0c:c4:7a:fe:30:0c
#      - 0c:c4:7a:fe:2e:04
      - 0c:c4:7a:fe:30:30
      - 0c:c4:7a:fe:2e:80
      - 0c:c4:7a:fe:2e:50
      - 0c:c4:7a:fe:2e:a4
      - 0c:c4:7a:fe:30:2c
      - 0c:c4:7a:fe:2e:44
      - 0c:c4:7a:fe:2f:a0
      - 0c:c4:7a:fe:2e:2c
      - 0c:c4:7a:fe:2c:ec
      - 0c:c4:7a:fe:2e:b0
      - 0c:c4:7a:fe:2e:18
      - 0c:c4:7a:fe:2c:d8
      - 0c:c4:7a:fe:30:10
      - 0c:c4:7a:fe:2d:10
      - 0c:c4:7a:fe:2f:b8
      - 0c:c4:7a:fe:2f:ec
      - 0c:c4:7a:fe:2e:54
      - 0c:c4:7a:fe:2e:88
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.0.44
#      - 10.10.0.45 bad nvme drive
      - 10.10.0.46
      - 10.10.0.47
      - 10.10.0.48
      - 10.10.0.49
      - 10.10.0.50
      - 10.10.0.51
      - 10.10.0.52
      - 10.10.0.53
      - 10.10.0.54
      - 10.10.0.55
      - 10.10.0.56
      - 10.10.0.57
      - 10.10.0.58
      - 10.10.0.59
      - 10.10.0.60
      - 10.10.0.61
      - 10.10.0.62
      - 10.10.0.63
    networks:
      bridge: false
      bindings:
        - management: enp97s0f0
        - sfe: enp113s0f0
        - private: enp113s0f1
        - public: enp97s0f1
  container:
    role: container
    macs:
      - 0c:c4:7a:f9:8e:10
    interface: ens2f0np0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/sda
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.0.41
    networks:
      bridge: false
      bindings:
        - management: ens2f0np0
        - sfe: ens2f1np1
        - private: ens2f2np2
        - public: ens2f3np3
  containerv2:
    role: container
    macs:
      - 0c:c4:7a:fe:2e:84
      - 0c:c4:7a:fe:30:18
      - 0c:c4:7a:fe:2e:8c
      - 0c:c4:7a:fe:2f:a8
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: /dev/nvme0n1
    partman_config:
      method: lvm
    ipmi_addresses:
      - 10.10.0.64
      - 10.10.0.65
      - 10.10.0.66
      - 10.10.0.67
    networks:
      bridge: false
      bindings:
        - management: enp97s0f0
        - sfe: enp113s0f0
        - private: enp113s0f1
        - public: enp97s0f1
