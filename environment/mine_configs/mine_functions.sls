mine_functions:
  network.ip_addrs: []
  build_phase:
    - mine_function: grains.get
    - build_phase
