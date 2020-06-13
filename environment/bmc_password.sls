#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DXJDsPPhHxrgSAQdAXOVOVtcgezf7uog5mGboszqhHTW+QHB5jWvsHBSQChMw
  XKHApK3/ZzUGXLPbsHR8QJ45/nliEg2M0xrjSuEsffN0+kIsGqvMruKX8GMZ1h2G
  0ksB5V9WlDPi+4yk4PhQrO80htRb4/QwyjtPT/cb46CebNwEOoV+kpWTJmRJvBN0
  M8/jFO0HDDyP8cK0h+BdgwFhlrsS3WeitZpNQEU=
  =H+SU
  -----END PGP MESSAGE-----
