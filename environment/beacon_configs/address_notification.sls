beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
        {{ salt['network.ifacestartswith'](address) }}[0]:
          ipaddr:
{% endfor %}
