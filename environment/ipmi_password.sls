#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  hF4D4vt3uiyAUUgSAQdA3KSQJD/fNr2YUNhOcbGK4YlSh7qFc0bUsYlLKVrOfnkw
  FTwkKyi4zLyL7py6ZGc/U0eTxGYcwOemqbpUNmS9+qRFN3UEQvum8B9xUl/WHgyb
  0ksBN8FZUfx4Y0hgp0vg+ykbGJ5HkXORbkH004LIJ29YX6veNF3Y9O4tDZKAAAvW
  cn1dbzkp93FhwPKZ7+Ew108AeL5zhCCEnRpvyec=
  =XYAf
  -----END PGP MESSAGE-----
