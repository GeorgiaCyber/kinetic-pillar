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
  'cache*':
    - environment/images
    - environment/beacon_configs/cache_errors
  'controller*':
    - environment/images
  'storage*':
    - environment/osd_mappings
  'haproxy*':
    - environment/danos_password
  'antora*':
    - environment/schedule_configs/antora_schedule
  'keystone*':
    - environment/bind_password
    - environment/ldap_ca
  'glance*':
    - environment/images
  'nova*':
    - environment/flavors
