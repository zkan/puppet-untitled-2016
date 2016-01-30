# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
    config.vm.box = "ubuntu/trusty64"

    config.vm.define "puppet" do |master|
        master.vm.host_name = "puppet"
        master.vm.network :private_network, ip: "192.168.33.10"
    end

    config.vm.define "a1" do |agent|
        agent.vm.host_name = "a1"
        agent.vm.network :private_network, ip: "192.168.33.11"
    end

    config.vm.define "a2" do |agent|
        agent.vm.host_name = "a2"
        agent.vm.network :private_network, ip: "192.168.33.12"
    end

    config.vm.define "a3" do |agent|
        agent.vm.host_name = "a3"
        agent.vm.network :private_network, ip: "192.168.33.13"
    end
end
