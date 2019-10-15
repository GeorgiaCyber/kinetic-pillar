beacons:
  network_settings:
    - coalesce: True
    - interfaces:
{% for address in grains['ipv4'] %}
  {% for interface in grains['ip_interfaces'] %}
        {{ interface }}:{{ address }}
    {% if address = interface %}
        {{ interface }}:
          ipaddr:
    {% endif %}
  {% endfor %}
{% endfor %}
