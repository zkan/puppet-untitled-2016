class nginx {
  package { "nginx":
    ensure => "1.6.2-1~trusty"
  }
}
