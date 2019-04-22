build-essential:
  pkg.installed

libexpat1-dev:
  pkg.installed

libssl-dev:
  pkg.installed

zlib1g-dev:
  pkg.installed

libncurses5-dev:
  pkg.installed

libbz2-dev:
  pkg.installed

liblzma-dev:
  pkg.installed

libsqlite3-dev:
  pkg.installed

libffi-dev:
  pkg.installed

tcl-dev:
  pkg.installed

linux-headers-amd64:
  pkg.installed

libreadline-dev:
  pkg.installed

python source:
  archive.extracted:
    - name: /build
    - source: https://github.com/python/cpython/archive/v3.7.3.tar.gz
    - source_hash: 50a316789ba46cd154460c389ebc47a875c26e60b649c5e3dbd20fd4728f0d91
    - if_missing: /build/cpython-3.7.3
