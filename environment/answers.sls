#!yaml|gpg

## URL to the primary kinetic repo (usually https://github.com/georgiacyber/kinetic.git).
gitfs_remote_configuration:
  url: https://github.com/georgiacyber/kinetic.git
  branch: i-am-speed

## URL to your external pillar (can be on any publicly-accessible version control system)
gitfs_pillar_configuration:
  url: https://github.com/georgiacyber/kinetic-pillar.git
  branch: i-am-speed

## Other remotes that you need on top of the default (security configuration, etc.)
gitfs_other_configurations:
  stigs:
    url: https://git.cybbh.space/vta/kinetic-stigs.git
    branch: master

## Salt transport mechanism.  Valid values are zreomq and tcp
## See https://docs.saltstack.com/en/latest/topics/transports/
salt_transport: zeromq

## Salt version to pin your release to.  Set to 'latest' to always use the latest stable release.
## See https://github.com/saltstack/salt-bootstrap/blob/develop/bootstrap-salt.sh
salt_version: 3001

## DNS A record that points to your salt master for this environment
master_record: salt.internal.georgiacyber.org

## DNS A record that points to your pxe host for this environment
pxe_record: pxe.internal.georgiacyber.org

## Repository for your documentation site
antora_docs_repo: https://github.com/GeorgiaCyber/kinetic-docs.git

## Specify your timezone
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.timezone.html
timezone: America/New_York

## Set your orchestration timeouts
## generate is how long a generate runner will wait until it gets a phase check
## event, e.g. {{ type }}/generate/auth/start
## phasecheck configures the dependence retry states.  You can increase interval and splay
## and decrease attempts to lower the load on your salt-master somewhat at the cost
## of overall orchestration completion speed
timeouts:
  generate: 7200
  phasecheck:
    interval: 30
    attempts: 240
    splay: 10


## Specify your endpoint URLs for openstack
endpoints:
  public: dashboard.gacyberrange.org
  internal: dashboard.gacyberrange.org
  admin: dashboard.gacyberrange.org

## Specify your ldap configuration
common_ldap_configuration:
  address: directory.fix.me.please
  bind_user: uid=bind,cn=users,cn=accounts,dc=foo,dc=bar
  base_dn: dc=foo,dc=bar
  user_dn: cn=users,cn=accounts,dc=foo,dc=bar
  group_dn: cn=groups,cn=accounts,dc=foo,dc=bar

## keystone-specific LDAP config.  user_filter should be a group that all range users
## are a member of.  group_filter should be a group that all range groups are a member
## of.  Keystone_domain is the domain you want to use to access your LDAP accounts on
## the horizon login page
keystone_ldap_configuration:
  user_filter: (memberOf=cn=foo_user_filter,cn=groups,cn=accounts,dc=bar,dc=baz)
  group_filter: (memberOf=cn=foo_group_filter,cn=groups,cn=accounts,dc=bar,dc=baz)
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
  AAAAB3NzaC1yc2EAAAABJQAAAQEAs9JlRHUaXiXNjMtIfdBDFO73n2DYzQcNIF1Gd5U5OjJ0bBAx0K/C2k3vSWZlfey6/OgP6QIzZGApbzNu3wONfG8EYpuprwLjRtJ6MQnO4lRMqXkhmIhZz9bfqjUWwp4Yi27Ryv/LE5/6+4pSC9v99Ieeha0q12BeQfXEF1of6biT3bPzoX5OtiyKXiohj3V+L1kWUxHdEBj7np19GvLeXL7KHWmr229q8WT3nZkQfz88UXYPRMhQYLSorGVEsum7NnyzcPp09U+34cJ6IyW//pk0HLCnDMqwqE1PT9KadvgnGkdsX6IBCLg51I5LDRm+Y2AS+s0ucqOIsXbvhvYUhQ==:
    encoding: ssh-rsa

## Specify the perma-URL to your syslog server
## This is *not* the built-in server, but rather an upstream one
## That you would like all events forwarded to
## if you have none, set to false.
syslog_url: False

## Specify the IPMI user that will be used to bootstrap physical devices
api_user: ADMIN

### Integrated DANOS Configuration
### Enabled: True or False
### username: the DANOS user that will access the REST API
### endpoint: Can either be the special value of 'gateway' (which will resolve to the ip address of the default gateway on the management network) or an IP
### See environment/danos_password.sls for password configuration
danos:
  enabled: True
  username: rest
  endpoint: gateway

## Specify your subnets.  The number of addresses for private, sfe, sbe, and oob should be
## equivalent to the number of addresses in management (and management should be at least a /24)
## The public subnet should be the already-existing network that you will utilize to grant
## external access to your instances.

## float_start - Where you want your DHCP leases for your public network to begin
## float_end - Where you want your DHCP leases for your public network to end
## float_gateway - Gateway for your public network
## float_dns - DNS for your float network
## cache/dns_public_IP - currently unparsed

networking:
  subnets:
    management: 10.100.4.0/22
    public: 10.101.0.0/16
    private: 10.110.4.0/24
    sfe: 10.120.4.0/24
    sbe: 10.130.4.0/24
    oob: 10.100.0.0/22
  addresses:
    float_start: 10.101.20.0
    float_end: 10.101.255.100
    float_gateway: 10.101.255.254
    float_dns: 10.101.255.254

## neutron networking backend.  Valid values are networking-ovn
## or linuxbridge
neutron:
  backend: networking-ovn

## the theme you wish to install in horizon (set url to false if none).  URL should point to git repo
## name should be the top-level directory you wish to extract the theme to
## Site branding and site link should match appropriate values.
## See https://docs.openstack.org/horizon/latest/configuration/customizing.html
horizon:
  theme:
    url: https://github.com/GeorgiaCyber/kinetic-theme.git
    branch: master
    name: gcr
    site_branding: Georgia Cyber Range
    site_branding_link: https://www.gacybercenter.org/

## specify which docker image you would wish to use for the cloud shell functionality
zun:
  cloud_shell_image: usacys/openstack-client:latest

## Number of placement groups for your ceph pools
## https://docs.ceph.com/docs/master/rados/operations/placement-groups/
## deprecated - currently does nothing
cephconf:
  vms_pgs: 2048
  volumes_pgs: 512
  images_pgs: 512
  fileshare_data_pgs: 512
  fileshare_metadata_pgs: 128

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
    gitfs_update_interval: 10
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
  external_auth: |
    external_auth:
      pam:
        api:
          - 'salt':
            - address.*
  rest_cherrypy: |
    rest_cherrypy:
      port: 8000
      ssl_crt: /etc/pki/tls/certs/localhost.crt
      ssl_key: /etc/pki/tls/certs/localhost.key
  runner_dirs: |
    runner_dirs:
      - /srv/runners
  reactor: |
    reactor:
      - salt/minion/*/start:
        - salt://reactor/update_mine.sls
        - salt://reactor/highstate_haproxy.sls
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/update_ceph_conf.sls
        - salt://reactor/highstate_pxe.sls
        - salt://reactor/highstate_dns.sls
        - salt://reactor/highstate_manila.sls
      - salt/beacon/*/network_settings/result:
        - salt://reactor/update_mine.sls
        - salt://reactor/highstate_haproxy.sls
        - salt://reactor/highstate_mysql.sls
        - salt://reactor/update_ceph_conf.sls
        - salt://reactor/highstate_pxe.sls
        - salt://reactor/highstate_dns.sls
        - salt://reactor/highstate_manila.sls
