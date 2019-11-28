#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----

  hF4DAAAAAAAAAAASAQdAELNnh2kut5fedM+ssjobBvPsHtbLzknsBRpJ6A7b/lAw
  fvsfcGIwLzPhhHFIHoCp7ijy7UPAlhyuQuFzp9VpYh7ZysEmERMp77hqEk+8DvOC
  0ksBYladBbJFSer4OsI3fBu50PlVPkmsWIHhO2fi6+0+5YZebtWNY6OlLUTZKm1u
  85BZQFULjkIjRomNcLTO0Dw2w0RQ3oOqMsxoC94=
  =3ije
  -----END PGP MESSAGE-----
