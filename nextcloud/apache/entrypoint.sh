#!/bin/bash
set -e

echo $(whoami)

rm -f /usr/local/apache2/logs/httpd.pid

exec /usr/sbin/httpd -DFOREGROUND "$@" 
