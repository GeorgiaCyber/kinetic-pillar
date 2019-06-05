#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4DBuXkSPg6p/8SAQdAAxM76h8tVxDUQHnfhbAhMMyx9f77L3mkZB9KBXx6X18w
  8QBW4cnMnU1+yf229l4R493MlybV+8Lon65n5pekSo9N7GbmKUwYP3FU6wIdzKTa
  0kABr5GXWaDTyxIckX14W5KNCREyJMx9LPgP3S40oY6mugWuWACPvnTd33OGHSKL
  myH5E5uCj7X621X1dhe36gau
  =Dvp1
  -----END PGP MESSAGE-----
