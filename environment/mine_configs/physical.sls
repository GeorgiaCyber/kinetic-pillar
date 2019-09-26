mine_functions:
  cmd.run:
    - "ipmitool lan print 1 | grep "IP Address  " | awk '{ print $4 }'"
    - python_shell: True
