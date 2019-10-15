beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
{% for interface in salt['network.ifacestartswith'](address) %}
        {{ interface }}:
          ipaddr:
{% endfor %}
{% endfor %}
