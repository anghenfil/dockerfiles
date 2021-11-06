#!/bin/bash

docker build -t nginx .

docker container run -d --rm --name nginx --net nginx-public --mount source=tls,target=/etc/tls/,readonly -p 80:80 -p 443:443 nginx
