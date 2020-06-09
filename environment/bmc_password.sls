#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DqhQ2aFP17aMSAQdAJvHlYqLe4y8UhPmvp7gWzHWXxicG/CsV/hW0zJSIPkQw
  WOLDbnGX+IIcIOsYiTf0vKYKu3vtGQBIWsiZlrQ0NQZQKm4B17dRbvMzM54WC/Lc
  0ksB2+NWrjGOrgHjsZUOJkTwI4Q1tXUjVjwv9scCtgRqrWhsV+Zbbdgg6PAbrqIb
  d2//6DQ7Q87SXiaGrUliqZuJsTMgbvJnIR/AEbU=
  =wdnj
  -----END PGP MESSAGE-----
