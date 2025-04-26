#!/bin/sh

set -e

squid -Nz

if [ ! -d "/var/cache/squid/ssl_db" ]; then
  /usr/lib/squid/security_file_certgen -c -s /var/cache/squid/ssl_db -M 16MB
fi

chown -R squid:squid /var/cache/squid
