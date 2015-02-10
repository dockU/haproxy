FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV CPU native
ENV USE_PCRE 1
ENV USE_LINUX_SPLICE 1
ENV HAPROXY_VER 1.5.8

VOLUME ['/opt/bin/']

RUN /usr/bin/pacman -Syu --needed --noconfirm tar pcre

ADD http://www.haproxy.org/download/1.5/src/haproxy-$HAPROXY_VER.tar.gz /tmp/haproxy.tar.gz
RUN tar -C /opt/ -xvf /tmp/haproxy.tar.gz

WORKDIR /opt/haproxy-$HAPROXY_VER/
RUN make install

RUN /bin/cp /opt/haproxy-$HAPROXY_VER/haproxy /opt/built/
RUN /bin/rm -rf /opt/haproxy-$HAPROXY_VER /tmp/haproxy.tar.gz
