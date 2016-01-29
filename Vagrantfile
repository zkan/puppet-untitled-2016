# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.define "puppet" do |master|
        master.vm.host_name = "puppet"
        master.vm.network :private_network, ip: "192.168.33.10"
    end

    config.vm.define "wp1" do |agent|
        agent.vm.host_name = "wp1"
        agent.vm.network :private_network, ip: "192.168.33.11"
    end
end
