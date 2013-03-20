class mysql {
  $password = "toor"

  package { "mysql-server":
    ensure => present,
    require => Exec["apt-get update"]
  }

  service { "mysql":
    ensure => running,
    require => Package["mysql-server"],
  }

  exec { "set-mysql-passwrod":
    unless => "mysqladmin -uroot -p$password status",
    command => "mysqladmin -uroot password $password",
    require => Service["mysql"],
  }
}