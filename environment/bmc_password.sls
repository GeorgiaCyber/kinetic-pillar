#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4D1UvbyrjVJ6MSAQdAJGUZgrMkJshnhwqizhz2i2ghB2JZ9eW8wrFTj0BWBl4w
  O9q9M6RlZPAAgXSkeb/XiyzH+ZuzOUz83judvOnXei1iPkWPaffdNKGkmDzE7lPl
  0ksB4CLPQ4PJbonZzEkC9+xkMqj/ZEfSkaV6M9Ewtr/DQh0SDNuE6J1qlkVlljUr
  rN0LKAUCprwHie/VrVC7mF4fJZ1DRpNOvRJgVus=
  =6Sxz
  -----END PGP MESSAGE-----
