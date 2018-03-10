#!/bin/bash
# Docker Install
# Where we begin our docker story
apt-get update
apt-get install -y apt-transport-https ca-certificates
apt-get install dirmngr -y
apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 \
--recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo 'deb https://apt.dockerproject.org/repo debian-stretch main' > \
/etc/apt/sources.list.d/docker.list
apt-get update
apt-get install docker-engine -y
service docker start
