#!yaml|gpg

## Specify the password for the ADMIN user on your IPMI devices using the gpg key located at /root/key.gpg
## As of right now, there isn't really a way to autodiscover and figure out which BMC belongs to who when
## using a non-managed DHCP server (a managed one will be available in a later release and this option will
## become more flexible.  For now, use the same strong password on all of your BMCs if you want to use this
## feature.  Ensure that your BMCs *cannot* access anything outside of the OOB network, and the only device
## that can reach inside the OOB network is your salt master.

ipmi_password: |
  -----BEGIN PGP MESSAGE-----
  
  hF4DAAAAAAAAAAASAQdApGMQ8n0KPdxM8k1maDFyCpu8kx2QJdKD4TO8w8xZPm0w
  o0kh/uezNXe30EgG55PvkU1HU+izD1eqGYmcVJu902bgytd3hTBuM0QYEm221n6h
  0kABQSj6Pa7L8rA53X2fJ5Fv8grLboETiYcpOLiNwnRNoG1axxZ+hyr9Tke12/ER
  GuEdkDxtXBqeMaVrufk5rQ1S
  =3Id3
  -----END PGP MESSAGE-----
