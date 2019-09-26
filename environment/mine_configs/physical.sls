mine_functions:
  ipmi_address:
    - mine_function: cmd.run
    - ipmitool lan print 1 | grep "IP Address  " | awk '{ print $4 }'
