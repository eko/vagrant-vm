class bootstrap { 
  # ensures that puppet is present
  group { 'puppet':
    ensure => 'present'
  }

  # update packages before installing them
  exec { 'apt-get update':
    command => '/usr/bin/apt-get update'
  }
}
