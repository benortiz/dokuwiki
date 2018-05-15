#!/bin/bash

mkdir -p ~/dokuwiki
cd ~/dokuwiki
curl -sSL https://raw.githubusercontent.com/benortiz/dokuwiki/master/docker-compose.yml > docker-compose.yml
docker-compose up

