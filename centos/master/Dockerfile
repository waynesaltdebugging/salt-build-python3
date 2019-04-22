FROM centos:7
RUN curl -L https://bootstrap.saltstack.com -o install_salt.sh
RUN sh install_salt.sh -M -X
ADD orch/ /srv/salt/orch/
ADD states/ /srv/salt/
