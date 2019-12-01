## Deployment phases.  Generally should not be changed.  Each phase must successfully
## complete before the next one is launched.  Will ensure all dependencies are met

map:
  phase1:
    - controller
  phase2:
    - cache
  phase3:
    - cephmon
    - haproxy
    - mysql
    - memcached
    - rabbitmq
    - graylog
    - ovsdb
  phase4:
    - storage
    - keystone
    - antora
  phase5:
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
  phase6:
    - compute
    - container
