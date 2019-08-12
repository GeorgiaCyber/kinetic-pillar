virtual:
  cache:
    count: 1
    ram: 8192000
    cpu: 2
    os: ubuntu1804
    disk: 512G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  cephmon:
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  haproxy:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 32G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  antora:
    count: 1
    ram: 4096000
    cpu: 2
    os: ubuntu1804
    disk: 16G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  mysql:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  rabbitmq:
    count: 1
    ram: 32768000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  memcached:
    count: 1
    ram: 32768000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
  keystone:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  glance:
    count: 2
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  nova:
    count: 2
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  neutron:
    count: 2
    ram: 16384000
    cpu: 12
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: private
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: public
          primary: false
          bridge: false
          vlan: false
  horizon:
    count: 2
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  heat:
    count: 2
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  cinder:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  designate:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
  swift:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
        ens5:
          network: sfe
          primary: false
          bridge: false
          vlan: false
  zun:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      vlan: false
      interfaces:
        ens3:
          network: management
          primary: true
          bridge: false
          vlan: false
        ens4:
          network: public
          primary: false
          bridge: false
          vlan: false
