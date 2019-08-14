## This file determines which physical disk will be mapped to which journal for a particular version of storage node in your ceph cluster.
## In this case, there is only one journal, so all OSD share it.

osd_mappings:
  storage:
    osd:
      - /dev/sda
      - /dev/sdb
      - /dev/sdc
      - /dev/sdd
      - /dev/sde
      - /dev/sdf
      - /dev/sdg
      - /dev/sdh
      - /dev/sdi
      - /dev/sdj
      - /dev/sdk
      - /dev/sdl
    journal:
      - /dev/nvme0n1
