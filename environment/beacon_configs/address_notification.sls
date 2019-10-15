beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
        {{ address }}:
          ipaddr:
{% endfor %}
