#!/usr/bin/env bash

/usr/bin/pacman -Syu --needed --noconfirm tar pcre

curl http://www.haproxy.org/download/1.5/src/haproxy-$HAPROXY_VER.tar.gz -o /tmp/haproxy.tar.gz
tar -C /opt/ -xvf /tmp/haproxy.tar.gz

cd /opt/haproxy-$HAPROXY_VER/
make install
/bin/cp /opt/haproxy-$HAPROXY_VER/haproxy /opt/built/
