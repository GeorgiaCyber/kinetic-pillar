#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

bmc_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DiaG6giIW9+oSAQdAqLApHYkKYAa6DXtoRy/BkEZTLAUjTHudqs3M97Og5lgw
  CYM74aEExobOVyDW+A1VXVlUC+sAM0HiSJlUAyHBb1KrehgpMehOAWSRPd8kzqGS
  0ksBAZr/Mo9/ryF35bZoLsiGFwPR7vVaXglSFdUKtYOr3RQ34ZASvBc2Rjq1a7v3
  xnS8Wq8q/xdop9g7q+OfK35Kf+OCOyrnGZf99ew=
  =X8yr
  -----END PGP MESSAGE-----
