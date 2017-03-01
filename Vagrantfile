# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "base" do |base|
    base.vm.box = "ubuntu/trusty64"
    base.vm.network "private_network", ip: "192.168.42.41"
    base.vm.network "forwarded_port", guest:4200, host: 4200
    base.vm.synced_folder ".", "/home/vagrant/vm-folders", create: true
    base.vm.provider "virtualbox" do |virtualbox|
      virtualbox.memory = 2048
    end

    base.vm.provision "file", source: ".bashrc", destination: ".bashrc", run: "always"
    base.vm.provision "file", source: ".vimrc", destination: ".vimrc", run: "always"
    base.vm.provision "shell", path: "./setup.sh", privileged: false
  end

end
