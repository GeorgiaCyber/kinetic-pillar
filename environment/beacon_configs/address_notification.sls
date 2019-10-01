beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface in grains['ip_interfaces'] %}
        {{ interface }}:
          ipaddr:
{% endfor %}
