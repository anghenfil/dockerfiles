#!/bin/bash

docker build -t nextcloud-php .

docker container run -d --rm --name nextcloud-php --net nextcloud-net --mount source=nextcloud,target=/var/www/nextcloud nextcloud-php
