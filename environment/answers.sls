#!yaml|gpg

gitfs_remote_configuration:
  url: https://github.com/georgiacyber/kinetic.git
  branch: master

gitfs_pillar_configuration:
  url: https://github.com/georgiacyber/kinetic-pillar.git
  branch: master

gitfs_other_configurations:
  stigs:
    url: https://git.cybbh.space/vta/kinetic-stigs.git
    branch: master

antora_docs_repo: https://github.com/GeorgiaCyber/kinetic-docs.git

## Specify your timezone
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.timezone.html
timezone: America/New_York

## Specify your endpoint URLs for openstack
endpoints:
  public: dashboard.gacyberrange.org
  internal: internal.dashboard.gacyberrange.org
  admin: internal.dashboard.gacyberrange.org

## Specify your ldap configuration
common_ldap_configuration:
  address: directory.fix.me.please
  bind_user: uid=bind,cn=users,cn=accounts,dc=cybbh,dc=space
  base_dn: dc=cybbh,dc=space
  user_dn: cn=users,cn=accounts,dc=cybbh,dc=space
  group_dn: cn=groups,cn=accounts,dc=cybbh,dc=space

keystone_ldap_configuration:
  user_filter: (memberOf=cn=vta_user_filter,cn=groups,cn=accounts,dc=cybbh,dc=space)
  group_filter: (memberOf=cn=vta_group_filter,cn=groups,cn=accounts,dc=cybbh,dc=space)
  keystone_domain: ipa

## Specify your haproxy TLS options
haproxy:
  tls_domains:
    - dashboard.gacyberrange.org
    - console.gacyberrange.org
    - docs.gacyberrange.org
  tls_email: testing12345678@somefakedomain.website
  dashboard_domain: dashboard.gacyberrange.org
  console_domain: console.gacyberrange.org
  docs_domain: docs.gacyberrange.org

## Specify which keys you would like to be added to authorized_keys for the root user on ALL machines
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.ssh_auth.html
authorized_keys:
  AAAAC3NzaC1lZDI1NTE5AAAAIIKw+cBx9BBKcoXKLxMLVoGCD7znZqBjnMkaIipAikQJ:
    encoding: ed25519

## Specify the URL to your syslog server
syslog_url: fix.me.please.com:5514

## Specify your subnets.  The number of addresses for private, sfe, sbe, and oob should be
## equivalent to the number of addresses in management (and management should be at least a /24)
## The public subnet should be the already-existing network that you will utilize to grant
## external access to your instances.  You must choose a single IP address that will be assigned
## to your cache for the purpose of providing package caching services to your instances.
## Your start and end addresses are the addresses from your provider network that will be made
## available to your hosts

networking:
  subnets:
    management: 10.100.4.0/22
    public: 10.101.0.0/16
    private: 10.110.4.0/22
    sfe: 10.120.4.0/22
    sbe: 10.130.4.0/22
    oob: 10.100.0.0/22
  addresses:
    float_start: 10.101.20.0
    float_end: 10.101.255.100
    float_gateway: 10.101.255.254
    float_dns: 10.101.255.254
    cache_public_ip: 10.101.7.250
    dns_public_ip: 10.101.7.250

cephconf:
  vms_pgs: 2048
  volumes_pgs: 512
  images_pgs: 512

## Assorted salt master configuration options.  Each entry will be written to a separate file in /etc/salt/master.d
## https://docs.saltstack.com/en/latest/ref/configuration/master.html
master-config:
  default_top: |
    default_top: base
  file_roots: |
    file_roots:
      base:
        - /srv/salt/
  fileserver_backend: |
    fileserver_backend:
      - git
      - roots
  gitfs_update_interval: |
    gitfs_update_interval: 3
  hash_type: |
    hash_type: sha512
  interface: |
    interface: 0.0.0.0
  loop_interval: |
    loop_interval: 10
  ping_on_rotate: |
    ping_on_rotate: True
  state_output: |
    state_output: changes
  top_file_merging_strategy: |
    top_file_merging_strategy: same
  pillar_roots: |
    pillar_roots:
      base:
        - /srv/dynamic_pillar

  reactor: |
    reactor:
      - 'salt/beacon/pxe/inotify//var/www/html/pending_hosts/*':
        - salt://reactor/publish_pending_minion_id.sls
      - create/glance/pool:
        - salt://reactor/create_glance_pool.sls
      - create/nova/pool:
        - salt://reactor/create_nova_pool.sls
      - create/cinder/pool:
        - salt://reactor/create_cinder_pool.sls
      - cache/mine/address/update:
        - salt://reactor/highstate_pxe.sls
      - keystone/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - glance/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - nova/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - neutron/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - heat/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - horizon/mine/address/update:
        - salt://reactor/highstate_haproxy.sls
      - cinder/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - designate/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
      - antora/mine/address/update:
        - salt://reactor/highstate_haproxy.sls
      - swift/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
        - salt://reactor/highstate_cephmon.sls
        - salt://reactor/highstate_storage.sls
      - zun/mine/address/update:
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/highstate_haproxy.sls
