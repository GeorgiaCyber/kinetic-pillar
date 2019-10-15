beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in pillar['virtual'][grains['type']]['networks']['interfaces'] %}
        {{ interface }}:
          ipaddr:
{% endfor %}
