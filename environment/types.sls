## This file keeps track of the implementation style for each service.
## Currently supported styles are physical and virtual.  Container style is WIP.

types:
  salt: virtual
  pxe: virtual
  antora: virtual
  controller: physical
  compute: physical
  storage: physical
  cache: virtual
  container: physical
  cephmon: virtual
  haproxy: virtual
  mysql: virtual
  rabbitmq: virtual
  memcached: virtual
  keystone: virtual
  glance: virtual
  nova: virtual
  neutron: virtual
  network: virtual
  ovsdb: virtual
  horizon: virtual
  heat: virtual
  cinder: virtual
  designate: virtual
  swift: virtual
  zun: virtual
  placement: virtual
  graylog: virtual
  barbican: virtual
  magnum: virtual
  sahara: virtual
  manila: virtual
  share: virtual
  mds: virtual
  some_other_thing: container
