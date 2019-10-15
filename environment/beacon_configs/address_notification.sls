beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
{% set interfaces = salt['network.ifacestartswith'](address) %}
{% for interface in interfaces %}
        {{ interface }}:
          ipaddr:
{% endfor %}
{% endfor %}
