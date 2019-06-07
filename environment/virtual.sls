virtual:
  cache:
    count: 1
    ram: 8192000
    cpu: 2
    os: ubuntu1804
    disk: 512G
    networks:
      bridge: false
      bindings:
        - management: ens3
  cephmon:
    count: 3
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 32G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - sfe: ens4
  haproxy:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 32G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  mysql:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
  rabbitmq:
    count: 1
    ram: 32768000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
  memcached:
    count: 1
    ram: 32768000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
  keystone:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  glance:
    count: 5
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
        - sfe: ens5
  nova:
    count: 5
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  neutron:
    count: 6
    ram: 16384000
    cpu: 12
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
        - private: ens5
  horizon:
    count: 4
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  heat:
    count: 3
    ram: 16384000
    cpu: 8
    os: ubuntu1804
    disk: 128G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  cinder:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
        - sfe: ens5
  designate:
    count: 1
    ram: 16384000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
  swift:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
        - sfe: ens5
  zun:
    count: 1
    ram: 8192000
    cpu: 4
    os: ubuntu1804
    disk: 64G
    networks:
      bridge: false
      bindings:
        - management: ens3
        - public: ens4
