FROM dock0/arch
MAINTAINER Jon Chen <bsd@voltaire.sh>

ENV CPU native
ENV USE_PCRE 1
ENV USE_LINUX_SPLICE 1
ENV HAPROXY_VER 1.5.11

VOLUME ['/opt/bin/']

ADD run.sh /usr/local/bin/build_haproxy

CMD ["/usr/local/bin/build_haproxy"]
