#! /bin/bash

echo "++++ Updating package list"
sudo apt-get update

echo "++++ Installting pre-requisites"
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

echo "++++ Getting GPG Key for repo"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "++++ Adding repository"
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

echo "++++ UPdate pakage list  including new repo"
sudo apt-get update

echo "++++ Installting Docker CE latest version"
sudo apt-get install docker-ce

echo "++++ Checking installation"
sudo docker run hello-world

