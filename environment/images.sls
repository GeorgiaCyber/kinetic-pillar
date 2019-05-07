#!yaml|gpg

images:
  ubuntu1804:
    name: bionic-server-cloudimg-amd64.qcow2
    needs_conversion: true
    remote_url: https://cloud-images.ubuntu.com/bionic/current/bionic-server-cloudimg-amd64.img
    remote_hash: http://cloud-images.ubuntu.com/bionic/current/SHA256SUMS
    remote_source_hash_name: "'*bionic-server-cloudimg-amd64.img'"
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: ubuntu1804.raw
    local_source_hash_name: ubuntu1804.raw
    glance_name: "Ubuntu 18.04"
    glance: true
    controller: true
  windows7:
    name: windows7
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/Windows%207.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: windows7.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: windows7.raw
    local_source_hash_name: windows7.raw
    glance_name: "Windows 7"
    glance: true
    controller: false
  windows101803:
    name: windows101803
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/win101803.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: win101803.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: win101803.raw
    local_source_hash_name: win101803.raw
    glance_name: "Windows 10 1803"
    glance: true
    controller: false
  windows10ltsb2016:
    name: windows10ltsb2016
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/win10ltsb2016.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: win10ltsb2016.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: win10ltsb2016.raw
    local_source_hash_name: win10ltsb2016.raw
    glance_name: "Windows 10 2016 LTSB"
    glance: true
    controller: false
  windows10ltsc2019:
    name: windows10ltsc2019
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/win10ltsc2019.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: win10ltsc2019.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: win10ltsc2019.raw
    local_source_hash_name: win10ltsc2019.raw
    glance_name: "Windows 10 2019 LTSC"
    glance: true
    controller: false
  server1809:
    name: server1809
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/server1809.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: server1809.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: server1809.raw
    local_source_hash_name: server1809.raw
    glance_name: "Windows Server 1809"
    glance: true
    controller: false
  server2016:
    name: server2016
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/server2016.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: server2016.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: server2016.raw
    local_source_hash_name: server2016.raw
    glance_name: "Windows Server 2016"
    glance: true
    controller: false
  server2019:
    name: server2019
    needs_conversion: false
    remote_url: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/server2019.raw
    remote_hash: https://vtaimagebootstrap.blob.core.usgovcloudapi.net/public-images/checksums
    remote_source_hash_name: server2019.raw
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: server2019.raw
    local_source_hash_name: server2019.raw
    glance_name: "Windows Server 2019"
    glance: true
    controller: false
  debian_buster:
    name: debian_buster
    needs_conversion: false
    remote_url: https://cdimage.debian.org/cdimage/openstack/testing/debian-testing-openstack-amd64.raw
    remote_hash: https://cdimage.debian.org/cdimage/openstack/testing/SHA256SUMS
    remote_source_hash_name: "debian-testing-openstack-amd64.raw"
    local_url: pull_from_mine
    local_hash: pull_from_mine
    local_name: debian-testing-openstack-amd64.raw
    local_source_hash_name: debian-testing-openstack-amd64.raw
    glance_name: "Debian Buster"
    glance: true
    controller: false
