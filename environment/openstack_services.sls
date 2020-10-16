## Service definitions for the various openstack services.  Generally should not be touched.
## If you feel like you need to change them, please reference the latest OpenStack installation
## guide for that service before making any adjustments

openstack_services:
  keystone:
    configuration:
      dbs:
        - keystone
      endpoints:
        api_version:
          v3:
            internal:
              protocol: "https://"
              port: ":5000"
              path: /v3
            admin:
              protocol: "https://"
              port: ":5000"
              path: /v3
            public:
              protocol: "https://"
              port: ":5000"
              path: /v3
  glance:
    configuration:
      dbs:
        - glance
      endpoints:
        api_version:
          v2:
            internal:
              protocol: "https://"
              port: ":9292"
              path: /
            admin:
              protocol: "https://"
              port: ":9292"
              path: /
            public:
              protocol: "https://"
              port: ":9292"
              path: /
  barbican:
    configuration:
      dbs:
        - barbican
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":9311"
              path: /
            admin:
              protocol: "https://"
              port: ":9311"
              path: /
            public:
              protocol: "https://"
              port: ":9311"
              path: /
  nova:
    configuration:
      dbs:
        - nova
        - nova_api
        - nova_cell0
      endpoints:
        api_version:
          v2:
            internal:
              protocol: "https://"
              port: ":8774"
              path: /v2.1/
            admin:
              protocol: "https://"
              port: ":8774"
              path: /v2.1/
            public:
              protocol: "https://"
              port: ":8774"
              path: /v2.1/
  placement:
    configuration:
      dbs:
        - placement
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":8778"
              path: /
            admin:
              protocol: "https://"
              port: ":8778"
              path: /
            public:
              protocol: "https://"
              port: ":8778"
              path: /
  neutron:
    configuration:
      dbs:
        - neutron
      endpoints:
        api_version:
          v2:
            internal:
              protocol: "https://"
              port: ":9696"
              path: /
            admin:
              protocol: "https://"
              port: ":9696"
              path: /
            public:
              protocol: "https://"
              port: ":9696"
              path: /
  heat:
    configuration:
      dbs:
        - heat
      endpoints:
        api_version:
          heat_v1:
            internal:
              protocol: "https://"
              port: ":8004"
              path: /v1/%\(tenant_id\)s
            admin:
              protocol: "https://"
              port: ":8004"
              path: /v1/%\(tenant_id\)s
            public:
              protocol: "https://"
              port: ":8004"
              path: /v1/%\(tenant_id\)s
          cfn_v1:
            internal_cfn:
              protocol: "https://"
              port: ":8000"
              path: /v1
            admin_cfn:
              protocol: "https://"
              port: ":8000"
              path: /v1
            public_cfn:
              protocol: "https://"
              port: ":8000"
              path: /v1
  cinder:
    configuration:
      dbs:
        - cinder
      endpoints:
        api_version:
          v2:
            internal:
              protocol: "https://"
              port: ":8776"
              path: /v2/%\(project_id\)s
            admin:
              protocol: "https://"
              port: ":8776"
              path: /v2/%\(project_id\)s
            public:
              protocol: "https://"
              port: ":8776"
              path: /v2/%\(project_id\)s
          v3:
            internal:
              protocol: "https://"
              port: ":8776"
              path: /v3/%\(project_id\)s
            admin:
              protocol: "https://"
              port: ":8776"
              path: /v3/%\(project_id\)s
            public:
              protocol: "https://"
              port: ":8776"
              path: /v3/%\(project_id\)s
  designate:
    configuration:
      dbs:
        - designate
      endpoints:
        api_version:
          v2:
            public:
              protocol: "https://"
              port: ":9001"
              path: /
  swift:
    configuration:
      dbs:
        - swift
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":7480"
              path: /swift/v1/AUTH_%\(project_id\)s
            admin:
              protocol: "https://"
              port: ":7480"
              path: /swift/v1/AUTH_%\(project_id\)s
            public:
              protocol: "https://"
              port: ":7480"
              path: /swift/v1/AUTH_%\(project_id\)s
  zun:
    configuration:
      dbs:
        - zun
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":9517"
              path: /v1
            admin:
              protocol: "https://"
              port: ":9517"
              path: /v1
            public:
              protocol: "https://"
              port: ":9517"
              path: /v1
  magnum:
    configuration:
      dbs:
        - magnum
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":9511"
              path: /v1
            admin:
              protocol: "https://"
              port: ":9511"
              path: /v1
            public:
              protocol: "https://"
              port: ":9511"
              path: /v1
  sahara:
    configuration:
      dbs:
        - sahara
      endpoints:
        api_version:
          v1:
            internal:
              protocol: "https://"
              port: ":8386"
              path: /v1.1/%\(project_id\)s
            admin:
              protocol: "https://"
              port: ":8386"
              path: /v1.1/%\(project_id\)s
            public:
              protocol: "https://"
              port: ":8386"
              path: /v1.1/%\(project_id\)s
  manila:
    configuration:
      dbs:
        - manila
      endpoints:
        api_version:
          v1:
      internal:
        protocol: "https://"
        port: ":8786"
        path: /v1/%\(project_id\)s
      admin:
        protocol: "https://"
        port: ":8786"
        path: /v1/%\(project_id\)s
      public:
        protocol: "https://"
        port: ":8786"
        path: /v1/%\(project_id\)s
          v2:
      internal:
        protocol: "https://"
        port: ":8786"
        path: /v2/%\(project_id\)s
      admin:
        protocol: "https://"
        port: ":8786"
        path: /v2/%\(project_id\)s
      public:
        protocol: "https://"
        port: ":8786"
        path: /v2/%\(project_id\)s
