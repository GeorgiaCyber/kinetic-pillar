
beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface, addresses in grains['ip_interfaces'] %}
        {{ address }}:
          ipaddr:
{% endfor %}
