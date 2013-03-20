class php {
  $packages = ["php5", "php5-cli", "php5-curl", "php5-mysql", "php5-dev", "php5-gd", "php-apc", "php-pear"]

  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}