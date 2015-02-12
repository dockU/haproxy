FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV VERSION 1.5.11

ADD https://github.com/dockU/haproxy/releases/download/${VERSION}/haproxy /usr/local/bin/haproxy
ADD run.sh /service/haproxy/run
