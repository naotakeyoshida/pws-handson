#!/bin/bash

## Set timezone
sudo cp /usr/share/zoneinfo/Japan /etc/localtime
echo "========================================="
echo "set timezone as JST"
echo "========================================="

## Install git
sudo yum -y install git
echo "============================="
echo `git --version`
echo "============================="

## Clone Repo
cd /home/vagrant
git clone https://github.com/naotakeyoshida/pws-handson1.git
git clone https://github.com/naotakeyoshida/pws-handson2.git
git clone https://github.com/naotakeyoshida/pws-handson3.git
git clone https://github.com/naotakeyoshida/pws-handson4.git

## Install CF CLI
curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx
sudo mv cf /usr/local/bin
echo "========================================="
echo "cf cli was installed!"
echo "API endpoint: https://api.run.pivotal.io"
echo "========================================="

## Install Docker
tee /etc/yum.repos.d/docker.repo <<-'EOF'
[dockerrepo]
name=Docker Repository
baseurl=https://yum.dockerproject.org/repo/main/centos/7/
enabled=1
gpgcheck=1
gpgkey=https://yum.dockerproject.org/gpg
EOF

yum install -y docker-engine
sudo systemctl enable docker.service
sudo groupadd docker
sudo usermod -aG docker vagrant
sudo systemctl start docker
echo "================================"
echo "Docker was installed!"
echo "================================"
