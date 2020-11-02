#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DAAAAAAAAAAASAQdA6wqrsohFxXWPLBLSofh0MGE+BVB0FKfJPB1UqZ1vV1Yw
  iSlu9x5iviPpenzVP/93XxgmeIzS6IGPfSIqrChA69Ym+71dC2AT26Au4IBqfuS6
  0ksBYwkcnduLS42cSK6l+PB88a9VQmkfsgh2Qr8IcJ3ZwV/xks0KCFJXErJs7RLM
  qAF8ARuSR2qDCr+Q97G2oHRceamyp//F3f8p8GI=
  =XHrx
  -----END PGP MESSAGE-----
