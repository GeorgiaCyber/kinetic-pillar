#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DAAAAAAAAAAASAQdA2pk4EjS4V4pgP/n1iS4SiuUvHFTmRlDQb6arEr5BkF4w
  5XEHe9e4NzsZJdnQzNnA76TlKU+8z22hPgJKPqEdOAssHhhVeMkn74HvGZMYLfum
  0ksBrxe4eowapLKgSqKlRt0rki0en0XfGXLJIyrGCOx6CYvrSLieRZbu1lL3xbcX
  ZzTI/CIDiqIpTNtT5qTBPEq3L4P6FcYp7m7bjpA=
  =pH/O
  -----END PGP MESSAGE-----

