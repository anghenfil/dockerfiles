#!/bin/bash

docker container run -it --rm --name letsencrypt --mount source=tls,target=/etc/tls/ --mount source=acme,target=/mnt/myacme/ letsencrypt
