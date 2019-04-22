gcc:
  pkg.installed

make:
  pkg.installed

expat-devel:
  pkg.installed

openssl-devel:
  pkg.installed

zlib-devel:
  pkg.installed

ncurses-devel:
  pkg.installed

bzip2-devel:
  pkg.installed

xz-devel:
  pkg.installed

sqlite-devel:
  pkg.installed

libffi-devel:
  pkg.installed

kernel-headers:
  pkg.installed

readline-devel:
  pkg.installed

python source:
  archive.extracted:
    - name: /build
    - source: https://github.com/python/cpython/archive/v3.7.3.tar.gz
    - source_hash: 50a316789ba46cd154460c389ebc47a875c26e60b649c5e3dbd20fd4728f0d91
    - if_missing: /build/cpython-3.7.3
