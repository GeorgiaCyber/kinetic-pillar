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
  'pxe':
    - environment/hosts
    - environment/pxe_bootstrap_beacon
  'salt*':
    - environment/ipmi_password
    - environment/hosts
    - environment/virtual
    - environment/map
    - environment/types
  'cache*':
    - environment/virtual
    - environment/hosts
    - environment/images
    - environment/mine_configs/cache
  'controller*':
    - environment/hosts
    - environment/images
    - environment/virtual
    - environment/mine_configs/physical
  'cephmon*':
    - environment/virtual
    - environment/mine_configs/cephmon
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
    - environment/virtual
  'antora*':
    - environment/mine_configs/antora
    - environment/virtual
    - environment/antora_schedule
  'mysql*':
    - environment/virtual
    - environment/mine_configs/mysql
    - environment/openstack_services
  'rabbitmq*':
    - environment/virtual
    - environment/mine_configs/rabbitmq
  'memcached*':
    - environment/virtual
    - environment/mine_configs/memcached
  'keystone*':
    - environment/virtual
    - environment/mine_configs/keystone
    - environment/bind_password
    - environment/ldap_ca
    - environment/openstack_services
  'glance*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/glance
    - environment/images
  'nova*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/nova
    - environment/flavors
  'neutron*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/neutron
  'horizon*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/horizon
  'heat*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/heat
  'cinder*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/cinder
  'designate*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/designate
  'swift*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/swift
  'zun*':
    - environment/virtual
    - environment/openstack_services
    - environment/mine_configs/zun
