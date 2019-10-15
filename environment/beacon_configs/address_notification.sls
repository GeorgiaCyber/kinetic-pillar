beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
{% set interface = salt['network.ifacestartswith'](address, 0) %}
        {{ address }}:
          ipaddr: {{ interface }}
{% endfor %}

test: |
{% for address in grains['ipv4'] %}
{% set interface = salt['network.ifacestartswith'](address, 0) %}
        {{ address }}:
          ipaddr: {{ interface }}
{% endfor %}
