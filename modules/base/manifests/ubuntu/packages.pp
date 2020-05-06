# This class installs all the base packages
class base::ubuntu::packages {
  exec { 'apt-update':
    command => '/usr/bin/apt-get update'
  }

  package { 'zsh':
    ensure  => instaled,
    require => Exec['apt-update'],
  }
}
