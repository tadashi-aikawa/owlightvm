# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"

  # port forward
  config.vm.network "forwarded_port", guest: 7777, host: 7777, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.10"

  # VirtualBox VM options
  config.vm.provider "virtualbox" do |vb|
    vb.name = "owlightvm"
    vb.cpus = "2"
    vb.memory = "2048"
  end

  # Install docker
  config.vm.provision "docker"

  # Provision others
  config.vm.provision :shell, :path => "provision.sh"
  config.vm.provision "file", source: "./user-provision.sh", destination: "user-provision.sh"
  config.vm.provision "file", source: "~/.gowlconfig", destination: ".gowlconfig"
  config.vm.provision "file", source: "~/.ssh", destination: ".ssh"
  config.vm.provision "file", source: "~/.vimrc", destination: ".vimrc"
  config.vm.provision "file", source: "~/.vim/dein.toml", destination: ".vim/dein.toml"
  config.vm.provision "file", source: "~/.vim/dein_lazy.toml", destination: ".vim/dein_lazy.toml"
end

