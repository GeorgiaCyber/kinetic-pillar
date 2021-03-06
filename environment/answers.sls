#!yaml|gpg

## URL to the primary kinetic repo (usually https://github.com/georgiacyber/kinetic.git).
## the branch key can be a branch, tag, or commit sha
kinetic_remote_configuration:
  url: https://github.com/georgiacyber/kinetic.git
  branch: master

## URL to your external pillar (can be on any publicly-accessible version control system)
## the branch key can be a branch, tag, or commit sha
kinetic_pillar_configuration:
  url: https://github.com/georgiacyber/kinetic-pillar.git
  branch: master

## Other remotes that you need on top of the default (security configuration, etc.)
## Ex:
# gitfs_other_configurations:
#   security:
#     url: https://somerepohost.whatever/security.git
#     branch: master
#   other_thing:
#     url: https://somerepohost.whatever/other_thing.git
#     branch: master
gitfs_other_configurations: {}

## salt configuration
## DNS A record that points to your salt master for this environment
## Valid salt versions compatible with kinetic are 3000, 3001, 3002, latest, $MAJOR, or $MAJOR.$PATCH)
salt:
  version: 3002
  record: salt.internal.georgiacyber.org
  conf:
    cpu: 6
    ram: 8192000
    disk: 16G
    interface: mgmt

## PXE configuration
## record is DNS A record that points to your pxe host for this environment
pxe:
  record: pxe.internal.georgiacyber.org
  conf:
    cpu: 1
    ram: 2048000
    disk: 16G
    interface: mgmt

## Repository for your documentation site
antora:
  repo_url: https://github.com/GeorgiaCyber/kinetic-docs.git
  theme_url: https://gitlab.com/gacybercenter/antora-gcc-ui/-/jobs/artifacts/master/raw/build/ui-bundle.zip?job=build
  theme_hash_url: https://gitlab.com/gacybercenter/antora-gcc-ui/-/jobs/artifacts/master/raw/hash?job=build

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

## keystone-specific config.  user_filter should be a group that all range users
## are a member of.  group_filter should be a group that all range groups are a member
## of.  Keystone_domain is the domain you want to use to access your LDAP accounts on
## the horizon login page
keystone:
  ldap_enabled: False
  ldap_configuration:
    user_filter: (memberOf=cn=foo_user_filter,cn=groups,cn=accounts,dc=bar,dc=baz)
    group_filter: (memberOf=cn=foo_group_filter,cn=groups,cn=accounts,dc=bar,dc=baz)
    keystone_domain: ipa
  token_expiration: 14400

## Specify your haproxy TLS options
haproxy:
  acme_email: testing12345678@somefakedomain.website
  dashboard_domain: dashboard.gacyberrange.org
  console_domain: console.gacyberrange.org
  docs_domain: docs.gacyberrange.org
  webssh2_domain: webssh2.gacyberrange.org

## Specify which keys you would like to be added to authorized_keys for the root user on ALL machines
## https://docs.saltstack.com/en/latest/ref/states/all/salt.states.ssh_auth.html
authorized_keys:
  AAAAB3NzaC1yc2EAAAADAQABAAABgQDGPLCFieVKbIHsxDDMsG4vOyGyz6UE0sz2xWbwQpsqRwhbVTGYGBzkMRA29TkxJvfgqZcGE5JYXsc8WSZAegdVMJzBuuGwNa1Q2lAhlvjT0QIO690vzfwEokb20l01IgRKvCXRq4MJzk03NPzkJQxxbGu9GwesBd5ffzwF+UGvzyCKOnlLs2PCsSS8rchK8BC7Pcfp1dJwaw8PCgnalVjK5tesv4XV1/YPw8fb08L88KUdymC94V3nndUOPa1BVpO6zLE0LYCo5lw326SOIrKCCu0ydOARB3FpS5DVja2nkvgxP0fi/VYPoGXgvCHGliinrVZAt8oZsqMM5DwfUjdkwvfrg5yc63uCfjo7bCJg5WaKJZ63TC6iz/aIrQ6IZF6XWmnPK8cmpPwc19C40V38wkXv0V9fahnlxHyVlW9c71dkxM31bRHTE2IxqEZu0Am37GUEDBuROusKpt5ruSuaIwzGeWq7HKUhemqS3ZJrfp9voaeqFYQKLTTCAYhLGA0=:
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
## or linuxbridge or openvswitch
neutron:
  backend: openvswitch

## nova configuration options.  Ref: https://docs.openstack.org/nova/latest/configuration/config.html
nova:
  token_ttl: 3600

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
  session_timeout: 7200

## specify which docker image you would wish to use for the cloud shell functionality
zun:
  cloud_shell_image: usacys/openstack-client:latest

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
  sock_pool_size: |
    sock_pool_size: 4
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
        - salt://reactor/highstate_notification.sls
        - salt://reactor/update_ceph_conf.sls
      - salt/beacon/*/network_settings/result:
        - salt://reactor/update_mine.sls
        - salt://reactor/highstate_notification.sls
        - salt://reactor/update_ceph_conf.sls
      - salt/beacon/*/inotify//var/log/apt-cacher-ng/apt-cacher.err:
        - salt://reactor/acng_maintenance.sls
