#!yaml|gpg

## Images that should be present on controllers/caches
## Should be tarballed raw files
## name: extracted value on disk
## remote_url: URL if cache not present
## remote_hash: hash file for tarball
## local_url: URL if cache present (generally pull_from_mine unless external cache being used)
## local_hash: hash file for tarball (generally pull_from_mine unless external cache being used)

images:
  centos8:
    name: centos-8.0
    type: virt-builder
  ubuntu2004:
    name: ubuntu2004
    type: url
    url: https://cloud-images.ubuntu.com/focal/current/focal-server-cloudimg-amd64-disk-kvm.img
