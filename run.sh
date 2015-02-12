#!/bin/sh

exec /usr/local/bin/haproxy -f /etc/haproxy/haproxy.conf 2>&1
