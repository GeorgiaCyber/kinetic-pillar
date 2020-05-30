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
##   bonds: false if there are no LAGG iterfaces,
##   bonds:
##     bond0:
##       - slaveX
##   if there are
##   vlan: true if you will be tagging on this host
##   interface entries: top level definition will be the name of the physical interface
##     network: the network to which it will bind (must match answers.sls)
##     primary: true if it will get DHCP, otherwise false
##     bridge: true if a bridged interface, otherwise false
##     vlan: vlanID if a vlan, otherwise false.

hosts:
  controller:
    role: controller
    os: centos8
    uuids:
      - 00000000-0000-0000-0000-0CC47AFBF3AC
      - 00000000-0000-0000-0000-0CC47AFBF104
      - 00000000-0000-0000-0000-0CC47AFBF0F0
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL6T4TCU
    kvm_disk_config:
      type: standard
      members:
        - rootfs
    networks:
      management:
        network: management
        interfaces: [enp97s0f0]
        bridge: true
        vlan: false
      sfe:
        network: sfe
        interfaces: [enp97s0f1]
        bridge: true
        vlan: false
      public:
        network: public
        interfaces: [enp113s0f0]
        bridge: true
        vlan: false
      private:
        network: private
        interfaces: [enp113s0f1]
        bridge: true
        vlan: false
  storage:
    role: storage
    os: centos8
    uuids:
      - 00000000-0000-0000-0000-AC1F6BB6DF3A
      - 00000000-0000-0000-0000-AC1F6BB6DF29
      - 00000000-0000-0000-0000-AC1F6BB6DF26
      - 00000000-0000-0000-0000-AC1F6BB6DF4F
      - 00000000-0000-0000-0000-AC1F6BB6DF49
      - 00000000-0000-0000-0000-AC1F6BB6DF24
      - 00000000-0000-0000-0000-AC1F6BB6DF4E
      - 00000000-0000-0000-0000-AC1F6BB6DF1A
#      - 00000000-0000-0000-0000-AC1F6BB6DF39 #inop - bad motherboard will not power on
      - 00000000-0000-0000-0000-AC1F6BB6DF18
      - 00000000-0000-0000-0000-AC1F6BB6DF1D
      - 00000000-0000-0000-0000-AC1F6BB6DF28
#      - 00000000-0000-0000-0000-AC1F6BB6DF2F #inop - bad motherboard will not power on
      - 00000000-0000-0000-0000-AC1F6BB6DF22
      - 00000000-0000-0000-0000-AC1F6BB6DF12
    interface: ens2f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: SAMSUNG MZ1LW960HMJP-00003
    networks:
      bonds: False
      bridge: false
      vlan: false
      interfaces:
        ens2f0:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens2f1:
          network: sfe
          primary: false
          bridge: false
          vlan: false
        ens1f0:
          network: sbe
          primary: false
          bridge: false
          vlan: false
  compute:
    role: compute
    os: centos8
    uuids:
      - 00000000-0000-0000-0000-0CC47AFBF3D0
      - 00000000-0000-0000-0000-0CC47AFBF280
      - 00000000-0000-0000-0000-0CC47AFBF1A8
      - 00000000-0000-0000-0000-0CC47AFBF2FC
      - 00000000-0000-0000-0000-0CC47AFBF284
      - 00000000-0000-0000-0000-0CC47AFBF21C
      - 00000000-0000-0000-0000-0CC47AFBF10C
      - 00000000-0000-0000-0000-0CC47AFBF3E4
      - 00000000-0000-0000-0000-0CC47AFBF3CC
      - 00000000-0000-0000-0000-0CC47AFBF110
      - 00000000-0000-0000-0000-0CC47AFBF2A8
      - 00000000-0000-0000-0000-0CC47AFBF39C
#      - 00000000-0000-0000-0000-0CC47AFBF3B4 #inop no nvme detected
      - 00000000-0000-0000-0000-0CC47AFBF274
      - 00000000-0000-0000-0000-0CC47AFBF268
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL1T6TCU
    networks:
      bonds: false
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
    os: centos8
    uuids:
      - 00000000-0000-0000-0000-0CC47AFBF274 #duplicated UUID - remove from compute
      - 00000000-0000-0000-0000-0CC47AFBF268 #duplicated UUID - remove from compute
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL1T6TCU
    networks:
      bonds: false
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
