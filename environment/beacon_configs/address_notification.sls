beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for host, address in grains['ipv4'] %}
{% for interface in salt['network.ifacestartswith'](address) %}
        {{ interface }}:
          ipaddr:
{% endfor %}
{% endfor %}
