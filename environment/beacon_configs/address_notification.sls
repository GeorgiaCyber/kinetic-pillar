beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface in salt['grains.get']('ifwatch') %}
        {{ interface }}:
          ipaddr:
{% endfor %}
