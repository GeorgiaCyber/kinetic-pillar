#!yaml|gpg

## Images that should be present on controllers/caches
## Should be tarballed raw files
## name: extracted value on disk
## remote_url: URL if cache not present
## remote_hash: hash file for tarball
## local_url: URL if cache present (generally pull_from_mine unless external cache being used)
## local_hash: hash file for tarball (generally pull_from_mine unless external cache being used)

images:
  ubuntu1804:
    name: ubuntu1804.raw
    remote_url: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/ubuntu1804.raw.tar.gz?job=upload
    remote_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/checksums?job=upload
    local_url: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/ubuntu1804.raw.tar.gz?job=upload
    local_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/checksums?job=upload
  centos7:
    name: centos7-udev.raw
    remote_url: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/centos7-udev.raw.tar.gz?job=upload
    remote_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/checksums?job=upload
    local_url: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/centos7-udev.raw.tar.gz?job=upload
    local_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/artifacts/master/raw/checksums?job=upload
