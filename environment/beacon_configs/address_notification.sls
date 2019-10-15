beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface in pillar['virtual'][grains['type']]['networks']['interfaces'] %}
        {{ interface }}:
          ipaddr:
{% endfor %}
