beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface in grains['ifwatch'] %}
        {{ interface }}:
          ipaddr:
{% endfor %}
