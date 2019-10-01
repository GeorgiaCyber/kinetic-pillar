
beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface, addresses in salt['grains.item']['ip_interfaces'] %}
        {{ address }}:
          ipaddr:
{% endfor %}
