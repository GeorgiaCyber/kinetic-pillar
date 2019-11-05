## host definition file - where you specify the physical configuration for all of your various host types
## role: the type of 'thing' it is, currently used options are controller, compute, storage, and container.
## macs: python list of all the macs belonging to this type of host
## interface: the interface that you want to use when PXE booting (should be DHCP enabled)
## proxy: if you have a static, external proxy, place the address here.  Otherwise use pull_from_mine to use the internal one
## root_password: preseeded password.  See mkpasswd.
## ntp_server: the ntp server that you want to use for the preseed process
## disk:  the disk you want to install the OS on to
## ipmi_addresses: the addresses for the IPMI interfaces on these devices

## kvm_disk_config - CONTROLLER ONLY
## type: raidX, where X is 1 or 10.  raid1 must have 2 members entries in the list.  raid10 must have a multiple of 2 members in the list
## type: standard.  May pass a device (e.g. /dev/sdb) as a single member, or pass the special value 'rootfs' as a single member, which will
## just create a directory on the root filesystem at /kvm

## networks: specify how you want your final, post-deployment network to be configured.
##   bridge: true if this host will be used as a hypervisor
##   vlan: true if you will be tagging on this host
##   interface entries: top level definition will be the name of the physical interface
##     network: the network to which it will bind (must match answers.sls)
##     primary: true if it will get DHCP, otherwise false
##     bridge: true if a bridged interface, otherwise false
##     vlan: vlanID if a vlan, otherwise false.

hosts:
  controller:
    role: controller
    macs:
      - 0c:c4:7a:fb:f3:ac
      - 0c:c4:7a:fb:f0:f0
#      - 0c:c4:7a:fb:f1:04
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL6T4TCU
    ipmi_addresses:
      - 10.100.0.22
      - 10.100.0.23
#      - 10.100.0.41
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
#      - 00:25:90:5f:5f:10
#      - 00:25:90:5f:5f:12
#      - 00:25:90:5f:5e:ae
#      - 00:25:90:5f:5f:06
#      - 00:25:90:5f:60:0c
#      - 00:25:90:5f:5f:be
    interface: enp94s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: SAMSUNG MZ1LW960HMJP-00003
    ipmi_addresses:
      - 10.100.0.20
      - 10.100.0.21
      - 10.100.0.31
      - 10.100.0.32
      - 10.100.0.33
      - 10.100.0.34
      - 10.100.0.35
      - 10.100.0.38
#      - 10.100.0.39
#      - 10.100.0.42
#      - 10.100.0.47
#      - 10.100.0.48
#      - 10.100.0.49
#      - 10.100.0.51
#      - 10.100.0.52
    networks:
      bridge: false
      vlan: false
      interfaces:
        enp94s0f0:
          network: management
          primary: true
          bridge: false
          vlan: false
        enp94s0f1:
          network: sfe
          primary: false
          bridge: false
          vlan: false
        enp175s0f0:
          network: sbe
          primary: false
          bridge: false
          vlan: false
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
#      - 0c:c4:7a:fb:f3:cc
#      - 0c:c4:7a:fb:f1:10
#      - 0c:c4:7a:fb:f2:a8
#      - 0c:c4:7a:fb:f3:9c
#      - 0c:c4:7a:fb:f3:b4
#      - 0c:c4:7a:fb:f2:74
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL1T6TCU
    ipmi_addresses:
      - 10.100.0.24
      - 10.100.0.25
      - 10.100.0.26
      - 10.100.0.27
      - 10.100.0.28
      - 10.100.0.29
      - 10.100.0.30
      - 10.100.0.37
#      - 10.100.0.43
#      - 10.100.0.44
#      - 10.100.0.45
#      - 10.100.0.46
#      - 10.100.0.50
#      - 10.100.0.53
    networks:
      bridge: false
      vlan: false
      interfaces:
        enp97s0f0:
          network: management
          primary: true
          bridge: false
          vlan: false
        enp97s0f1:
          network: sfe
          primary: false
          bridge: false
          vlan: false
        enp113s0f0:
          network: public
          primary: false
          bridge: false
          vlan: false
        enp113s0f1:
          network: private
          primary: false
          bridge: false
          vlan: false
  container:
    role: container
    macs:
#      - 0c:c4:7a:fb:f2:68
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: SAMSUNG MZ1LW960HMJP-00003
    ipmi_addresses:
#      - 10.100.0.54
    networks:
      bridge: false
      vlan: false
      interfaces:
        enp97s0f0:
          network: management
          primary: true
          bridge: false
          vlan: false
        enp97s0f1:
          network: sfe
          primary: false
          bridge: false
          vlan: false
        enp113s0f0:
          network: public
          primary: false
          bridge: false
          vlan: false
        enp113s0f1:
          network: private
          primary: false
          bridge: false
          vlan: false
