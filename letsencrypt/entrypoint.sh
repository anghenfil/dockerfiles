#!/bin/bash
set -e

FILE=/mnt/myacme/myaccount.conf
#Check if we need to install acme
if [ -f "$FILE" ]; then
    # Already installed, renew certificates
    cd /mnt/myacme/
    ./acme.sh --cron
else

cd ~
git clone https://github.com/acmesh-official/acme.sh.git
cd acme.sh
./acme.sh --install --force \
--home /mnt/myacme \
--config-home /mnt/myacme/config \
--accountkey /mnt/myacme/myaccount.key \
--accountconf /mnt/myacme/myaccount.conf \
--cert-home /etc/tls \
--accountemail "webmaster@anghenfil.de"

./acme.sh --issue --cert-home /etc/tls --staging --dns dns_netcup -d new.anghenfil.de --dnssleep 600

fi
