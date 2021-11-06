#!/bin/bash

docker build -t letsencrypt .

docker container run -it --rm --name letsencrypt --mount source=tls,target=/etc/tls/ --mount source=acme,target=/mnt/myacme/ -e "Nc_Apikey=XXX" -n "NC_Apipw=XXX" -n "NC_CID=XXX" letsencrypt
