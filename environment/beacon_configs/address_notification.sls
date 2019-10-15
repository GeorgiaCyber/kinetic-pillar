beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for host, address in grains['ipv4'] | dictsort() %}
{% for interface in salt['network.ifacestartswith'](address) %}
        {{ interface }}:
          ipaddr: {{ host }}
{% endfor %}
{% endfor %}
