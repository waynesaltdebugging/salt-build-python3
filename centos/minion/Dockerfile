FROM centos:7
RUN curl -L https://bootstrap.saltstack.com -o install_salt.sh
RUN sh install_salt.sh -X
COPY minion /etc/salt/minion
