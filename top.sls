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
    - environment/types
    - environment/mine_configs/networking
    - environment/beacon_configs/address_notification
  'pxe':
    - environment/hosts
  'salt*':
    - environment/ipmi_password
    - environment/hosts
    - environment/virtual
    - environment/map
    - environment/openstack_services
  'cache*':
    - environment/virtual
    - environment/hosts
    - environment/images
  'controller*':
    - environment/hosts
    - environment/images
    - environment/virtual
    - environment/mine_configs/physical
  'cephmon*':
    - environment/virtual
    - environment/openstack_services
  'storage*':
    - environment/hosts
    - environment/osd_mappings
    - environment/openstack_services
    - environment/mine_configs/physical
  'compute*':
    - environment/hosts
    - environment/openstack_services
    - environment/mine_configs/physical
  'container*':
    - environment/hosts
    - environment/openstack_services
    - environment/mine_configs/physical
  'haproxy*':
    - environment/virtual
    - environment/openstack_services
  'antora*':
    - environment/virtual
    - environment/schedule_configs/antora_schedule
  'mysql*':
    - environment/virtual
    - environment/openstack_services
  'rabbitmq*':
    - environment/virtual
  'graylog*':
    - environment/virtual
  'memcached*':
    - environment/virtual
  'keystone*':
    - environment/virtual
    - environment/bind_password
    - environment/ldap_ca
    - environment/openstack_services
  'glance*':
    - environment/virtual
    - environment/openstack_services
    - environment/images
  'nova*':
    - environment/virtual
    - environment/openstack_services
    - environment/flavors
  'placement*':
    - environment/virtual
    - environment/openstack_services
  'barbican*':
    - environment/virtual
    - environment/openstack_services
  'magnum*':
    - environment/virtual
    - environment/openstack_services
  'neutron*':
    - environment/virtual
    - environment/openstack_services
  'network*':
    - environment/virtual
    - environment/openstack_services
  'ovsdb*':
    - environment/virtual
  'horizon*':
    - environment/virtual
    - environment/openstack_services
  'heat*':
    - environment/virtual
    - environment/openstack_services
  'cinder*':
    - environment/virtual
    - environment/openstack_services
  'designate*':
    - environment/virtual
    - environment/openstack_services
  'swift*':
    - environment/virtual
    - environment/openstack_services
  'zun*':
    - environment/virtual
    - environment/openstack_services
