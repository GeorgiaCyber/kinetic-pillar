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
    remote_url: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/ubuntu1804.raw.tar.gz?inline=false
    remote_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/checksums?inline=false
    local_url: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/ubuntu1804.raw.tar.gz?inline=false
    local_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/checksums?inline=false
  centos7:
    name: centos7.raw
    remote_url: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/centos7.raw.tar.gz?inline=false
    remote_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/checksums?inline=false
    local_url: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/centos7.raw.tar.gz?inline=false
    local_hash: https://git.cybbh.space/bitskrieg/images/-/jobs/68793/artifacts/raw/checksums?inline=false
