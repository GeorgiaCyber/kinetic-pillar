## Deployment phases.  Generally should not be changed.  Each phase must successfully
## complete before the next one is launched.  Will ensure all dependencies are met

map:
  phase1:
    - controller
  phase2:
    - cache
  phase3:
    - etcd
    - cephmon
    - haproxy
    - mysql
    - memcached
    - rabbitmq
    - graylog
    - ovsdb
    - bind
  phase4:
    - storage
    - keystone
    - antora
  phase5:
    - mds
    - placement
    - glance
    - nova
    - neutron
    - network
    - horizon
    - heat
    - cinder
    - designate
    - swift
    - zun
    - barbican
    - magnum
    - sahara
    - manila
    - volume
  phase6:
    - share
    - compute
    - container
