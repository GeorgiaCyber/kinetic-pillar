beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
  {% for interface in grains['ip_interfaces'] %}
    {% if address in interface %}
        {{ address }}:
          ipaddr:
    {% endif %}
  {% endfor %}
{% endfor %}
