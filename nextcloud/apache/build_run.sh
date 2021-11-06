#!/bin/bash

docker build -t nextcloud-httpd .

docker container run -d --rm --name nextcloud-httpd --net nextcloud-net --mount source=nextcloud,target=/var/www/nextcloud --mount source=nextcloud-data,target=/var/www/nextcloud/data nextcloud-httpd
docker network connect nginx-public nextcloud-httpd
