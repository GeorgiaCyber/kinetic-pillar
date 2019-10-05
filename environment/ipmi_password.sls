#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  hF4DtC5M3ch0cKESAQdAm0SxXFxirZ9TDf3QN6zUP3IeFxVOHP+VQDDHYIDSk0Aw
  tajV9166XWenmFPpSU5YGWErzlIOKFayUN12wAzMTWBbRHR7ZL53Mxb/2vBhICnn
  0ksBNAKsOOIgoX7+zflWZ6T8bbvKYo1bfW1X/L1Yd1zwP23LtxYQnDX8ijOQm7Ys
  VLx+KKrmHcPeXgZxBpFYkPldZP8opW8xIuqLJTE=
  =rYa6
  -----END PGP MESSAGE-----
