#!yaml|gpg

## Images that should be present on controllers/cache

controller_images:
  centos8:
    image_name: centos-8.2
    method: virt-builder
    size: 4G
    convert: true
    input_format: qcow2
    output_format: raw
    packages:
        - cloudinit
    customization: |
        #!/bin/bash
        systemctl stop firewalld
        systemctl disable firewalld
  ubuntu2004:
    image_name: ubuntu2004
    image_url: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
    method: virt-customize
    size: 4G
    convert: true
    input_format: qcow2
    output_format: raw
    packages:
    customization: |
        #!/bin/bash
        echo "customization completed via image_baker" > ./custom.txt