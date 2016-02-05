#!/usr/bin/env bash
apt-get update
apt-get install -y git-core python-setuptools
easy_install pip
pip install fabric

#su vagrant <<'EOF'
#gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
#curl -sSL https://get.rvm.io | bash -s stable --ruby
#source /home/vagrant/.rvm/scripts/rvm
#gem install --no-rdoc --no-ri rspec-puppet puppet
#EOF

su vagrant <<'EOF'
curl -#LO https://rvm.io/mpapis.asc
gpg --import mpapis.asc
curl -sSL https://get.rvm.io | bash -s stable --ruby
source /home/vagrant/.rvm/scripts/rvm
gem install --no-rdoc --no-ri rspec-puppet puppet
EOF
