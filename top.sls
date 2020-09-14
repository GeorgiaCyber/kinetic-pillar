## This file defines which hosts have access to which pillar data.
## The only time you should have to edit this file is when you add/
## remove a type of physical host or add a new openstack service.
## In general, hosts will need access to:
## 1. Their specification file (virtual if a VM, hosts if physical
## 2. Their mine configuration (if any)
## 3. Their OpenStack service definition
## Other entries can be added/removed as needed.

base:
  '*':
    - environment/answers
    - environment/mine_configs/mine_functions
    - environment/beacon_configs/address_notification
  'pxe':
    - environment/hosts
    - environment/bmc_password
  'salt*':
    - environment/bmc_password
    - environment/hosts
    - environment/openstack_services
  'cache*':
    - environment/hosts
    - environment/images
    - environment/beacon_configs/cache_errors
  'controller*':
    - environment/hosts
    - environment/images
  'cephmon*':
    - environment/hosts
    - environment/openstack_services
  'mds*':
    - environment/hosts
    - environment/openstack_services
  'storage*':
    - environment/hosts
    - environment/osd_mappings
    - environment/openstack_services
  'compute*':
    - environment/hosts
    - environment/openstack_services
  'container*':
    - environment/hosts
    - environment/openstack_services
  'haproxy*':
    - environment/hosts
    - environment/openstack_services
    - environment/danos_password
  'antora*':
    - environment/hosts
    - environment/schedule_configs/antora_schedule
  'mysql*':
    - environment/hosts
    - environment/openstack_services
  'rabbitmq*':
    - environment/hosts
  'graylog*':
    - environment/hosts
  'memcached*':
    - environment/hosts
  'keystone*':
    - environment/hosts
    - environment/bind_password
    - environment/ldap_ca
    - environment/openstack_services
  'glance*':
    - environment/hosts
    - environment/openstack_services
    - environment/images
  'nova*':
    - environment/hosts
    - environment/openstack_services
    - environment/flavors
  'placement*':
    - environment/hosts
    - environment/openstack_services
  'etcd*':
    - environment/hosts
  'barbican*':
    - environment/hosts
    - environment/openstack_services
  'sahara*':
    - environment/hosts
    - environment/openstack_services
  'magnum*':
    - environment/hosts
    - environment/openstack_services
  'neutron*':
    - environment/hosts
    - environment/openstack_services
  'network*':
    - environment/hosts
    - environment/openstack_services
  'ovsdb*':
    - environment/hosts
  'horizon*':
    - environment/hosts
    - environment/openstack_services
  'heat*':
    - environment/hosts
    - environment/openstack_services
  'cinder*':
    - environment/hosts
    - environment/openstack_services
  'volume*':
    - environment/hosts
    - environment/openstack_services
  'manila*':
    - environment/hosts
    - environment/openstack_services
  'share*':
    - environment/hosts
    - environment/openstack_services
  'designate*':
    - environment/hosts
    - environment/openstack_services
  'bind*':
    - environment/hosts
    - environment/openstack_services
  'swift*':
    - environment/hosts
    - environment/openstack_services
  'zun*':
    - environment/hosts
    - environment/openstack_services
