# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

$script = <<SCRIPT
sudo apt-get install -y git-core
SCRIPT

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "rspec-puppet" do |rspec|
    rspec.vm.host_name = "rspec-puppet"
    rspec.vm.network :private_network, ip: "192.168.33.9"
    rspec.vm.provision "shell", path: "setup/bootstrap-rspec-puppet.sh"
  end

  config.vm.define "puppet" do |master|
    master.vm.host_name = "puppet"
    master.vm.network :private_network, ip: "192.168.33.10"
    master.vm.provision "shell", path: "setup/bootstrap-puppet.sh"
    master.vm.provision "shell", inline: $script
  end

  config.vm.define "a1" do |agent|
    agent.vm.host_name = "a1"
    agent.vm.network :private_network, ip: "192.168.33.11"
    agent.vm.provision "shell", path: "setup/bootstrap-puppet.sh"
  end

  config.vm.define "a2" do |agent|
    agent.vm.host_name = "a2"
    agent.vm.network :private_network, ip: "192.168.33.12"
    agent.vm.provision "shell", path: "setup/bootstrap-puppet.sh"
  end

  config.vm.define "a3" do |agent|
    agent.vm.host_name = "a3"
    agent.vm.network :private_network, ip: "192.168.33.13"
    agent.vm.provision "shell", path: "setup/bootstrap-puppet.sh"
  end
end
