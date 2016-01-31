from fabric.api import cd, env, local, lcd, run


PUPPET_MASTER_IP = '192.168.33.10'


def puppet():
    env.hosts = [
        'vagrant@' + PUPPET_MASTER_IP + ':22',
    ]
    env.passwords = {
        'vagrant@' + PUPPET_MASTER_IP + ':22': 'vagrant'
    }


def test():
    with lcd('puppet/modules'):
        with lcd('nginx'):
            local('rspec')


def push():
    with lcd('puppet'):
        local('git add .')
        local('git push origin master')


def deploy():
    puppet()
    test()

    run('rm -rf puppet-untitled-2016')
    run('git clone https://github.com/zkan/puppet-untitled-2016.git')

    run('sudo rm -rf /etc/puppet/manifests')
    run('sudo ln -sf /home/vagrant/puppet-untitled-2016/puppet/manifests /etc/puppet/manifests')
    run('sudo rm -rf /etc/puppet/modules')
    run('sudo ln -sf /home/vagrant/puppet-untitled-2016/puppet/modules /etc/puppet/modules')
