FROM dock0/service
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV CPU native
ENV USE_PCRE 1
ENV USE_LINUX_SPLICE 1

RUN /usr/bin/pacman -Syu --needed --noconfirm tar pcre

ADD http://www.haproxy.org/download/1.5/src/haproxy-1.5.8.tar.gz /tmp/haproxy.tar.gz
RUN tar -C /opt/ -xvf /tmp/haproxy.tar.gz

WORKDIR /opt/haproxy-1.5.8/
RUN make install
