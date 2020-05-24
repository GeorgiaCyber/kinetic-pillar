#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DAAAAAAAAAAASAQdAs63vnZhJNolQHIZM9S8ES5/WJYbMqlSuVXQCrL+NcFMw
  52Kmnc2nvobk8VpEHe9gMGmT4y/djQaDVoMrZ3IrIj80loe/b7/chqRwSXNWKgDG
  0ksBawxj6oCSdxy0xdgbiu7kIlsk29jP0+vrh9SeF8tUm9V6qN+LStvDQHInHTPS
  jLvZAF4EtXhRYeg5ABGHroYilWVyzu01C2sykQE=
  =PfO5
  -----END PGP MESSAGE-----
