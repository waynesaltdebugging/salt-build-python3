FROM centos:7
RUN curl -L https://bootstrap.saltstack.com -o install_salt.sh
RUN sh install_salt.sh -X
ADD minion /etc/salt/minion
