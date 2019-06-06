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
