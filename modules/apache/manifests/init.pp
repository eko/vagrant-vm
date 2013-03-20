class apache {
  package { "apache2":
    ensure => present,
    require => Exec["apt-get update"]
  }

  # ensures that mode_rewrite is loaded + modifies configuration files
  file { "/etc/apache2/mods-enabled/rewrite.load":
    ensure => link,
    target => "/etc/apache2/mods-available/rewrite.load",
    require => Package["apache2"]
  }

  # add sample webroot file to apache available sites
  file { "/etc/apache2/sites-available/webroot":
    ensure => present,
    source => "/vagrant/modules/apache/samples/apache.webroot",
    require => Package["apache2"]
  }

  # add sample webroot file to apache enabled sites
  file { "/etc/apache2/sites-enabled/webroot":
    ensure => link,
    target => "/etc/apache2/sites-available/webroot",
    require => File["/etc/apache2/sites-available/webroot"]
  }

  # ensures that the apache2 service is running
  service { "apache2":
    ensure => running,
    require => Package["apache2"],
    subscribe => [
      File["/etc/apache2/mods-enabled/rewrite.load"],
      File["/etc/apache2/sites-available/webroot"]
    ],
  }
}
