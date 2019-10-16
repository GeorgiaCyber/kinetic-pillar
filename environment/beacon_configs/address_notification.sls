beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for interface in pillar['virtual']['neutron']['networks']['interfaces'] %}
        {{ interface }}:
          ipaddr:
{% endfor %}
