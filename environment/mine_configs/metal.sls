#!jinja|yaml

mine_functions:
  metal.gather:
    network: {{ pillar['networking']['subnets']['oob'] }}
