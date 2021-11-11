#!/bin/bash

printf "\n## INSTALLING UTILITIES ##\n"
apt-get -y update
apt-get -y install wget curl
#-----------------------------------------------------------------

printf "\n## INSTALLING DOCKER ##\n"
    apt-get -yq install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
apt-get update
apt-get -y install docker-ce

#------------------rootless mode----------------------------------

sudo usermod -aG docker $USER

#-----------------------------------------------------------------

printf "\n## INSTALLING DOCKER COMPOSE ##\n"
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
#-----------------------------------------------------------------
#


chmod -R 777 ../logs

printf "\n## ADDING LOCAL NAMES TO HOSTS FILE ##\n"
echo "172.20.1.1   openlibrary.loc" >> /etc/hosts
echo "172.20.1.1   www.openlibrary.loc" >> /etc/hosts
#-----------------------------------------------------------------


printf "\n## STARTING CONTAINERS ##\n"
cd .. && docker-compose up -d
docker-compose ps
#-----------------------------------------------------------------



echo "END [Enter]"
read