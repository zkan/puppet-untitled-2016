#!/usr/bin/env bash

su vagrant <<'EOF'
sudo ntpdate pool.ntp.org
sudo apt-get update && sudo apt-get -y install ntp
sudo service ntp restart

cd /home/vagrant/
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
sudo dpkg -i puppetlabs-release-trusty.deb
sudo apt-get update
sudo apt-get install -y puppet
EOF
