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
##   interface entries: top level definition will be the name of the physical interface
##     managed: whether or not the builtin networking state should manage the configuration.  boolean, defaults to True
##     interfaces: list of interfaces that will bind to the network.  If the list is <1, it implies a bond.
##     bridge: true if a bridged interface, otherwise false or omitted (implicit false)

hosts:
  controller:
    style: physical
    role: controller
    enabled: True
    needs:
      configure:
        salt: configure
        pxe: configure
    os: ubuntu2004
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
        interfaces: [enp97s0f0]
        bridge: true
      sfe:
        interfaces: [enp97s0f1]
        bridge: true
      public:
        interfaces: [enp113s0f0]
        bridge: true
      private:
        interfaces: [enp113s0f1]
        bridge: true
  storage:
    style: physical
    role: storage
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        cephmon: configure
        pxe: configure
    os: ubuntu2004
    uuids:
      - 00000000-0000-0000-0000-AC1F6BB6DF3A
      - 00000000-0000-0000-0000-AC1F6BB6DF29
      - 00000000-0000-0000-0000-AC1F6BB6DF26
      - 00000000-0000-0000-0000-AC1F6BB6DF4F
      - 00000000-0000-0000-0000-AC1F6BB6DF49
      - 00000000-0000-0000-0000-AC1F6BB6DF24
      - 00000000-0000-0000-0000-AC1F6BB6DF4E
      - 00000000-0000-0000-0000-AC1F6BB6DF1A
      - 00000000-0000-0000-0000-AC1F6BB6DF39
      - 00000000-0000-0000-0000-AC1F6BB6DF18
      - 00000000-0000-0000-0000-AC1F6BB6DF1D
      - 00000000-0000-0000-0000-AC1F6BB6DF28
      - 00000000-0000-0000-0000-AC1F6BB6DF2F
      - 00000000-0000-0000-0000-AC1F6BB6DF22
      - 00000000-0000-0000-0000-AC1F6BB6DF12
    interface: ens2f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: SAMSUNG MZ1LW960HMJP-00003
    networks:
      management:
        interfaces: [ens2f0]
      sfe:
        interfaces: [ens2f1]
      sbe:
        interfaces: [ens1f0]
  compute:
    style: physical
    role: compute
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        nova: configure
        neutron: configure
        ovsdb: configure
    os: ubuntu2004
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
      - 00000000-0000-0000-0000-0CC47AFBF3B4
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL1T6TCU
    networks:
      management:
        network: management
        interfaces: [enp97s0f0]
      sfe:
        interfaces: [enp97s0f1]
      public:
        interfaces: [enp113s0f0]
      private:
        interfaces: [enp113s0f1]
  container:
    style: physical
    role: container
    enabled: False
    needs:
      install:
        cache: configure
      configure:
        nova: configure
        neutron: configure
    os: ubuntu2004
    uuids:
      - 00000000-0000-0000-0000-0CC47AFBF274
      - 00000000-0000-0000-0000-0CC47AFBF268
    interface: enp97s0f0
    proxy: pull_from_mine
    root_password_crypted: $6$sSXsfvsKhwy$RrINorhH4lNeNdNbi/vHqCAApM8ID9Lhvmzs6OQMO4791igXZIrhWg6Kyi7XPRGhIZOgGUdCx4prarhaV62id0
    ntp_server: 0.us.pool.ntp.org
    disk: Micron_9200_MTFDHAL1T6TCU
    networks:
      management:
        interfaces: [enp97s0f0]
      sfe:
        interfaces: [enp97s0f1]
      public:
        interfaces: [enp113s0f0]
      private:
        interfaces: [enp113s0f1]
  cache:
    style: virtual
    enabled: True
    needs:
      configure:
        controller: configure
    count: 1
    ram: 8192000
    cpu: 2
    os: ubuntu2004
    disk: 512G
    networks:
      management:
        interfaces: [ens3]
  cephmon:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  mds:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        cephmon: configure
        controller: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  haproxy:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  antora:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
    count: 1
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 16G
    networks:
      management:
        interfaces: [ens3]
  mysql:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 128G
    networks:
      management:
        interfaces: [ens3]
  rabbitmq:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  memcached:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 8192000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  keystone:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
    count: 3
    ram: 8192000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  glance:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
        keystone: configure
    count: 2
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 64G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  nova:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
        keystone: configure
        placement: configure
    count: 2
    ram: 8192000
    cpu: 8
    os: ubuntu2004
    disk: 128G
    networks:
      management:
        interfaces: [ens3]
  neutron:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
        keystone: configure
        ovsdb: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  horizon:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
    count: 2
    ram: 8192000
    cpu: 8
    os: ubuntu2004
    disk: 128G
    networks:
      management:
        interfaces: [ens3]
  heat:
    style: virtual
    enabled: False
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
        keystone: configure
    count: 2
    ram: 8192000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  cinder:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  volume:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  designate:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  bind:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  swift:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        cephmon: configure
        storage: configure
        keystone: configure
    count: 2
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 64G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  zun:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 2
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 64G
    networks:
      management:
        interfaces: [ens3]
  placement:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
        haproxy: configure
        memcached: configure
        rabbitmq: configure
        keystone: configure
    count: 2
    ram: 8192000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  graylog:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 512G
    networks:
      management:
        interfaces: [ens3]
  network:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
      public:
        interfaces: [ens4]
      private:
        interfaces: [ens5]
  ovsdb:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  barbican:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 2
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  magnum:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 2
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  sahara:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 2
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  manila:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
  share:
    style: virtual
    enabled: False
    needs:
      configure:
        blocker: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
      sfe:
        interfaces: [ens4]
  etcd:
    style: virtual
    enabled: True
    needs:
      install:
        cache: configure
      configure:
        controller: configure
    count: 3
    ram: 4096000
    cpu: 2
    os: ubuntu2004
    disk: 32G
    networks:
      management:
        interfaces: [ens3]
