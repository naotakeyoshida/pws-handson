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
echo "cf cli installed!"
echo "API endpoint: https://api.run.pivotal.io"
echo "========================================="
