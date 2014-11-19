FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

RUN /usr/bin/pacman -Syu --needed --noconfirm tar
ADD http://www.haproxy.org/download/1.5/src/haproxy-1.5.8.tar.gz /tmp/haproxy.tar.gz
RUN tar -C /opt/ -xvf /tmp/haproxy.tar.gz
