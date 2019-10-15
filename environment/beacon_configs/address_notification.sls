beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
        12:
          ipaddr: {{ salt['network.ifacestartswith'](address) }}
{% endfor %}
