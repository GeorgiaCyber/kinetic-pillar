#!yaml|gpg

## Images that should be present on controllers/caches
## Should be tarballed raw files
## name: extracted value on disk
## remote_url: URL if cache not present
## remote_hash: hash file for tarball
## local_url: URL if cache present (generally pull_from_mine unless external cache being used)
## local_hash: hash file for tarball (generally pull_from_mine unless external cache being used)

glance_images:
  centos8.2:
    image_name: centos-8.2
    method: virt-builder
    size: 4G
    input_format: qcow2
    output_format: raw
    packages:
    customization: |
        #!/bin/bash
        echo "customization completed via virt-builder" > ./custom.txt
  ubuntu2004:
    image_name: ubuntu2004
    image_url: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
    method: virt-customize
    size: 4G
    conversion: true
    input_format: qcow2
    output_format: raw
    packages:
    customization: |
        #!/bin/bash
        echo "customization completed via virt-customize" > ./custom.txt
  ubuntu2004_lxqt:
    image_name: ubuntu2004_lxqt
    image_url: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64.img
    method: virt-customize
    size: 8G
    conversion: true
    input_format: qcow2
    output_format: raw
    packages:
        - lxqt
        - nmap
        - cmatrix     
    customization: |
        #!/bin/bash
        echo "customization completed via virt-customize" > ./custom.txt
        rm /usr/share/xsessions/ubuntu.desktop
        echo "blacklist floppy" /etc/modprobe.d/my-blacklist.conf
        grub-install /dev/sda
        update-grub
  debian10:
    image_name: debian10
    image_url: https://cloud.debian.org/images/cloud/OpenStack/current/debian-10-openstack-amd64.qcow2
    method: virt-customize
    size: 4G
    conversion: true
    input_format: qcow2
    output_format: raw
    packages:
    customization: |
        #!/bin/bash
        echo "customization completed via virt-builder" > ./custom.txt
  debian10_lxqt:
    image_name: debian10_lxqt
    image_url: https://cloud.debian.org/images/cloud/OpenStack/current/debian-10-openstack-amd64.qcow2
    method: virt-customize
    image_size: 8G
    conversion: true
    input_format: qcow2
    output_format: raw
    packages:
        - xorg
        - lxqt
        - sddm
    customization: |
        #!/bin/bash
        echo blacklist qxl > /etc/modprobe.d/qxl.conf
        sed -i "s/ttyS0,115200/ttys0,115200 net.ifnames=1 biosdevname=1/" /etc/default/grub
        echo "customization completed via virt-customize" > ./custom.txt
  debian10_kali:
    image_name: debian10_kali
    image_url: https://cloud.debian.org/images/cloud/OpenStack/current/debian-10-openstack-amd64.qcow2
    method: virt-customize
    image_size: 10G
    conversion: true
    input_format: qcow2
    output_format: raw
    packages:
        - wget
        - gnupg
        - dirmngr
    customization: |
        #!/bin/bash
        export DEBIAN_FRONTEND=noninteractive
        wget -q -O - https://archive.kali.org/archive-key.asc | gpg --import
        gpg --keyserver hkp://keys.gnupg.net --recv-key 44C6513A8E4FB3D30875F758ED444FF07D8D0BF6
        echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/sources.list
        gpg -a --export ED444FF07D8D0BF6 | sudo apt-key add -
        apt-get -y update
        apt-get -y install kali-desktop-lxde
        echo blacklist qxl > /etc/modprobe.d/qxl.conf
        echo "root:t00r" | chpasswd
        useradd -m -G sudo -s /bin/bash gacyberadmin
        echo "gacyberadmin:t3stp455w0rd" | chpasswd
        echo "customization completed via virt-customize" > ./custom.txt
