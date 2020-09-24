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
    - environment/hosts
    - environment/mine_configs/mine_functions
    - environment/beacon_configs/address_notification
  'pxe':
    - environment/bmc_password
  'salt*':
    - environment/bmc_password
    - environment/openstack_services
  'cache*':
    - environment/images
    - environment/beacon_configs/cache_errors
  'controller*':
    - environment/images
  'cephmon*':
    - environment/openstack_services
  'mds*':
    - environment/openstack_services
  'storage*':
    - environment/osd_mappings
    - environment/openstack_services
  'compute*':
    - environment/openstack_services
  'container*':
    - environment/openstack_services
  'haproxy*':
    - environment/openstack_services
    - environment/danos_password
  'antora*':
    - environment/schedule_configs/antora_schedule
  'mysql*':
    - environment/openstack_services
  'keystone*':
    - environment/bind_password
    - environment/ldap_ca
    - environment/openstack_services
  'glance*':
    - environment/openstack_services
    - environment/images
  'nova*':
    - environment/openstack_services
    - environment/flavors
  'placement*':
    - environment/openstack_services
  'barbican*':
    - environment/openstack_services
  'sahara*':
    - environment/openstack_services
  'magnum*':
    - environment/openstack_services
  'neutron*':
    - environment/openstack_services
  'network*':
    - environment/openstack_services
  'horizon*':
    - environment/openstack_services
  'heat*':
    - environment/openstack_services
  'cinder*':
    - environment/openstack_services
  'volume*':
    - environment/openstack_services
  'manila*':
    - environment/openstack_services
  'share*':
    - environment/openstack_services
  'designate*':
    - environment/openstack_services
  'bind*':
    - environment/openstack_services
  'swift*':
    - environment/openstack_services
  'zun*':
    - environment/openstack_services
