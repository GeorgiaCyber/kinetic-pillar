beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
{% set address+"_interface" = salt['network.ifacestartswith'](address) %}
        {{ address_interface }}:
          ipaddr: {{ interface }}
{% endfor %}
