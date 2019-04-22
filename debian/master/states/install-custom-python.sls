Install Python:
  archive.extracted:
    - source: salt://files/python-3.7.3.tar.gz
    - name: /opt

Update ldconfig:
  file.append:
    - name: /etc/ld.so.conf
    - text: /opt/python3.7/lib
  cmd.run:
    - name: ldconfig
    - onchangeds:
      - file: Update ldconfig
