# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/centos-7.2"
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.provision :shell, path: "bootstrap.sh"
end
