Install python build deps:
  salt.state:
    - tgt: centos_builder
    - sls:
        - python-build-dep

Configure python:
  salt.function:
    - tgt: centos_builder
    - name: cmd.run
    - arg:
      - /build/cpython-3.7.3/configure --enable-shared --prefix=/opt/python3.7
      - /build/cpython-3.7.3

Make python:
  salt.function:
    - tgt: centos_builder
    - name: cmd.run
    - arg:
      - make
      - /build/cpython-3.7.3

Install python:
  salt.function:
    - tgt: centos_builder
    - name: cmd.run
    - arg:
      - make install
      - /build/cpython-3.7.3

Create python tar:
  salt.function:
    - tgt: centos_builder
    - name: cmd.run
    - arg:
      - tar -czf /var/build/python-3.7.3.tar.gz python3.7
      - /opt

# Here you could do a salt file.push to upload to the master.
# Alternatively, let's assume that your build server is hosting
# the file via http(s).

Deploy python:
  salt.state:
    - tgt: centos_minion
    - sls:
      - install-custom-python
