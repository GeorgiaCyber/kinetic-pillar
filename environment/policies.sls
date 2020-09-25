## To use this file, add the service and specify the policy overrides in the new yaml format
## See https://docs.openstack.org/oslo.policy/latest/cli/oslopolicy-convert-json-to-yaml.html for details

##policies:
##  keystone: |
##    "identity:list_projects_for_user": "role:somerole"

policies:
  keystone: |
    "identity:list_projects_for_user": "role:somerole"
