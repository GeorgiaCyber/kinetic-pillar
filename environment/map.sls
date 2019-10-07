## Deployment phases.  Generally should not be changed.  Each phase must successfully
## complete before the next one is launched.  Will ensure all dependencies are met

map:
  phase1:
    - controller
  phase2:
    - cache
  phase3:
    - cephmon
  phase4:
    - storage
  phase5:
    - haproxy
    - mysql
    - memcached
    - rabbitmq
  phase6:
    - keystone
    - antora
  phase7:
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
  phase8:
    - compute
