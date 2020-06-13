#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DyVz5FsHlPcwSAQdAU3mbp1QeVGftAgKwgoxVcY9RjhALt2muo+SXxuV3ADow
  ScKv/XzA8L/lPxBlOxIwAf2D3qwFH5BMXGZRq8bRpWH0kWSQYPR6f2U+Z6Aq5/w2
  0ksBVkh20fFUN2jyBMsGUy6mZR8hOd7Ha9m/3EH/t4aPXbSOxY9kkut5K/U8cr3P
  4FNRlwg25J1jBQhi8NLMFoKX9ZTm9cerXukhhlg=
  =1Cqc
  -----END PGP MESSAGE-----
