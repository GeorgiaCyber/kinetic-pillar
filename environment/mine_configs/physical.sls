mine_functions:
  bmc_address:
    mine_function: cmd.run
    cmd: "ipmitool lan print 1 | grep 'IP Address  ' | awk '{ print $4 }'"
    python_shell: True
