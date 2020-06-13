#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DVKIw8IQ6/H0SAQdARu19J5aUjZyvJkJ/FAjyVGwBvEkmp1mdVQMKvmftWngw
  a1Ge3FcUTG1KwMZitRrx68xFGokZ5LSauQ0naj3X3ZM09WxBjpbZ6njgiSPqeb2d
  0ksBTOlPUouPkvbBpielIqxpyIWCNlFEm6kLdkgBP7rkzmAQuAIMRGw2B1nyYX7d
  9yOn441SPM8BnHzYrGB2KzKBJbRRzg/RBYK+csY=
  =72nE
  -----END PGP MESSAGE-----
