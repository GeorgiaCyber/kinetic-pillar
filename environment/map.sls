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
  phase4:
    - storage
  phase5:
    - keystone
    - antora
  phase6:
    - placement
    - glance
    - nova
    - neutron
    - horizon
    - heat
    - cinder
    - designate
    - swift
    - zun
  phase7:
    - compute
    - container
