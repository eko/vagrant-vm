class php {
  $packages = ["php5", "php5-cli", "php5-curl", "php5-mysql", "php5-dev", "php5-gd", "php-apc", "php5-intl", "php-pear", "libapache2-mod-php5"]

  # install php packages
  package { $packages:
    ensure => latest,
    require => Exec["apt-get update"]
  }

  # sets /files/etc/php5/apache2/php.ini/Date/ Europe/Paris
  augeas { 'php_set_date_timezone':
    context => '/files/etc/php5/apache2/php.ini/Date/',
    changes => 'set date.timezone Europe/Paris',
    require => Package['php5'],
  }
}