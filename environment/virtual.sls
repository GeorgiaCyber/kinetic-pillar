## Similar to hosts file.  Defines configuration for variousl virtual machines.
## count: number of machines that should be deployed
## ram: amount of ram each instance should have
## cpu: number of CPU cores each instance should have
## os: OS that instance should be deployed on
## disk: root disk size
## networks: specify how you want your final, post-deployment network to be configured.
##   interface entries: top level definition will be the name of the physical interface
##     network: the network to which it will bind
##     interfaces: list of interfaces that will bind to the network.  If the list is <1, it implies a bond.
##     bridge: true if a bridged interface, otherwise false or omitted (implicit false)
##     vlan: vlanID if a vlan, otherwise false or omitted (implicit false)

virtual:
  cache:
    count: 1
    ram: 8192000
    cpu: 2
    os: centos8
    disk: 512G
    networks:
      management:
        network: management
        interfaces: [ens3]
  cephmon:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
  mds:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
  haproxy:
    count: 1
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  antora:
    count: 1
    ram: 4096000
    cpu: 2
    os: centos8
    disk: 16G
    networks:
      management:
        network: management
        interfaces: [ens3]
  mysql:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 128G
    networks:
      management:
        network: management
        interfaces: [ens3]
  rabbitmq:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  memcached:
    count: 3
    ram: 8192000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  keystone:
    count: 3
    ram: 8192000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  glance:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 64G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
  nova:
    count: 2
    ram: 8192000
    cpu: 8
    os: centos8
    disk: 128G
    networks:
      management:
        network: management
        interfaces: [ens3]
  neutron:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  horizon:
    count: 2
    ram: 8192000
    cpu: 8
    os: centos8
    disk: 128G
    networks:
      management:
        network: management
        interfaces: [ens3]
  heat:
    count: 2
    ram: 8192000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  cinder:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  volume:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
  designate:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  bind:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  swift:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
  zun:
    count: 2
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 64G
    networks:
      management:
        network: management
        interfaces: [ens3]
  placement:
    count: 2
    ram: 8192000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  graylog:
    count: 1
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 512G
    networks:
      management:
        network: management
        interfaces: [ens3]
  network:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
      public:
        network: public
        interfaces: [ens4]
      private:
        network: private
        interfaces: [ens5]
  ovsdb:
    count: 3
    ram: 8192000
    cpu: 4
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  barbican:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  magnum:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  sahara:
    count: 2
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  manila:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
  share:
    count: 1
    ram: 4096000
    cpu: 2
    os: centos7
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
      sfe:
        network: sfe
        interfaces: [ens4]
      public:
        network: public
        interfaces: [ens5]
  etcd:
    count: 3
    ram: 4096000
    cpu: 2
    os: centos8
    disk: 32G
    networks:
      management:
        network: management
        interfaces: [ens3]
