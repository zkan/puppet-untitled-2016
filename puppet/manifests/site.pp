node "a1" {
  include git

  user { "agent-1":
    ensure => "present",
  }
}

node "a2" {
  package { "subversion":
    ensure => "installed"
  }

  class { "nginx"
    server_name => "puppet-untitled-2016"
  }

  user { "agent-2":
    ensure => "present",
  }
}

node "a3" {
  package { "apache2":
    ensure => "installed"
  }

  user { "agent-3":
    ensure => "present",
  }
}
