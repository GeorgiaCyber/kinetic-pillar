openstack_services:
  keystone:
    configuration:
      dbs:
        - keystone
      internal_endpoint:
        protocol: "http://"
        port: ":5000"
        path: /v3
      admin_endpoint:
        protocol: "http://"
        port: ":5000"
        path: /v3
      public_endpoint:
        protocol: "https://"
        port: ":5000"
        path: /v3
  glance:
    configuration:
      dbs:
        - glance
      internal_endpoint:
        protocol: "http://"
        port: ":9292"
        path: /
      admin_endpoint:
        protocol: "http://"
        port: ":9292"
        path: /
      public_endpoint:
        protocol: "https://"
        port: ":9292"
        path: /
  nova:
    configuration:
      dbs:
        - nova
        - nova_api
        - nova_cell0
      internal_endpoint:
        protocol: "http://"
        port: ":8774"
        path: /v2.1/
      admin_endpoint:
        protocol: "http://"
        port: ":8774"
        path: /v2.1/
      public_endpoint:
        protocol: "https://"
        port: ":8774"
        path: /v2.1/
  placement:
    configuration:
      dbs:
        - placement
      internal_endpoint:
        protocol: "http://"
        port: ":8778"
        path: /
      admin_endpoint:
        protocol: "http://"
        port: ":8778"
        path: /
      public_endpoint:
        protocol: "https://"
        port: ":8778"
        path: /
  neutron:
    configuration:
      dbs:
        - neutron
      internal_endpoint:
        protocol: "http://"
        port: ":9696"
        path: /
      admin_endpoint:
        protocol: "http://"
        port: ":9696"
        path: /
      public_endpoint:
        protocol: "http://"
        port: ":9696"
        path: /
  heat:
    configuration:
      dbs:
        - heat
      internal_endpoint:
        protocol: "http://"
        port: ":8004"
        path: /v1/%\(tenant_id\)s
      admin_endpoint:
        protocol: "http://"
        port: ":8004"
        path: /v1/%\(tenant_id\)s
      public_endpoint:
        protocol: "http://"
        port: ":8004"
        path: /v1/%\(tenant_id\)s
      internal_endpoint_cfn:
        protocol: "http://"
        port: ":8000"
        path: /v1
      admin_endpoint_cfn:
        protocol: "http://"
        port: ":8000"
        path: /v1
      public_endpoint_cfn:
        protocol: "http://"
        port: ":8000"
        path: /v1
  cinder:
    configuration:
      dbs:
        - cinder
      internal_endpoint:
        protocol: "http://"
        port: ":8776"
        v2_path: /v2/%\(project_id\)s
        v3_path: /v3/%\(project_id\)s
      admin_endpoint:
        protocol: "http://"
        port: ":8776"
        v2_path: /v2/%\(project_id\)s
        v3_path: /v3/%\(project_id\)s
      public_endpoint:
        protocol: "https://"
        port: ":8776"
        v2_path: /v2/%\(project_id\)s
        v3_path: /v3/%\(project_id\)s
  designate:
    configuration:
      dbs:
        - designate
      public_endpoint:
        protocol: "https://"
        port: ":9001"
        path: /
  swift:
    configuration:
      dbs:
        - swift
      internal_endpoint:
        protocol: "http://"
        port: ":7480"
        path: /v1/AUTH_%\(project_id\)s
      admin_endpoint:
        protocol: "http://"
        port: ":7480"
        path: /v1
      public_endpoint:
        protocol: "https://"
        port: ":7480"
        path: /v1/AUTH_%\(project_id\)s
  zun:
    configuration:
      dbs:
        - zun
      internal_endpoint:
        protocol: "http://"
        port: ":9517"
        path: /v1
      admin_endpoint:
        protocol: "http://"
        port: ":9517"
        path: /v1
      public_endpoint:
        protocol: "https://"
        port: ":9517"
        path: /v1
