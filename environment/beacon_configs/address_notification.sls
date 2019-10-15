beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
  {% for interface in grains['ip_interfaces'] %}
    {% if address == interface[0] %}
        {{ interface }}:
          ipaddr:
    {% endif %}
  {% endfor %}
{% endfor %}
