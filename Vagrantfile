# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
  config.vm.box = "ubuntu/xenial64"
  config.vm.network "private_network", ip: "192.168.33.10"
  # Add port-forward for Express apps
  config.vm.network "forwarded_port", guest: 3000, host: 3000
  # Add port-forward for Node-inspector
  config.vm.network "forwarded_port", guest: 5858, host: 5858
  # Add port-forward for other example apps
  config.vm.network "forwarded_port", guest: 8000, host: 8000
  config.vm.synced_folder "./", "/home/vagrant/www"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
    vb.name = "Vagrant Node"
  end
  config.vm.provider "virtualbox" do |v|
    v.customize ["setextradata", :id, "VBoxInternal2/SharedFoldersEnableSymlinksCreate/v-root", "1"]
  end
  config.vm.provision "shell", path: "./vagrant/provision.sh"
end
