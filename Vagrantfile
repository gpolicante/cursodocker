# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "centos/7"
  config.vm.box_check_update = false

  config.vm.define "master" do |srv|
    srv.vm.hostname = "master.devops.com"
    srv.vm.network "private_network", ip: "192.168.1.10"
    srv.vm.provider "virtualbox" do |vb|
      vb.memory = "2048"
      vb.cpus = "1"
    end
  end
  
  config.vm.define "node1" do |node1|
    node1.vm.hostname = "node1.devops.com"
    node1.vm.network "private_network", ip: "192.168.1.20"
    node1.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end

  end
  
  config.vm.define "node2" do |node2|
    node2.vm.hostname = "node2.devops.com"
    node2.vm.network "private_network", ip: "192.168.1.30"
    node2.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.cpus = "1"
    end

  end
 
   config.vm.provision "shell", inline: <<-SHELL
     echo 192.168.1.10 master.devops.com >> /etc/hosts
     echo 192.168.1.20 node1.devops.com >> /etc/hosts
     echo 192.168.1.30 node2.devops.com >> /etc/hosts
   SHELL

end
