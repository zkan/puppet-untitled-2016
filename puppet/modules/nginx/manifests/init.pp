class nginx ($server_name = "puppet-workshop") {
  package { "nginx":
    ensure => "installed"
  }

  file { "/etc/nginx/sites-available/default":
    content => template("nginx/default.erb"),
    owner => "root",
    group => "root",
    require => Package["nginx"]
  }
}
