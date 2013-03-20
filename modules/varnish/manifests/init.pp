class varnish {
  package { "varnish":
    ensure  => [present, latest],
    require => Exec["apt-get update"]
  }

  # configures varnish to listen on apache2 port
  file {'/etc/varnish/default.vcl':
    ensure => present,
    source => '/vagrant/modules/varnish/samples/default.vcl',
    require => Package["varnish"]
  }
}
