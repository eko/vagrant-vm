class tools::composer {
  include tools

  # sets /etc/php5/cli/php.ini/suhosin.executor.include.whitelist = phar
  augeas { 'whitelist_phar':
    context => '/files/etc/php5/conf.d/suhosin.ini/suhosin',
    changes => 'set suhosin.executor.include.whitelist phar',
    require => Package['php5-cli'],
  }

  # sets /etc/php5/cli/php.ini/PHP/allow_url_fopen = On
  augeas { 'allow_url_fopen':
    context => '/files/etc/php5/cli/php.ini/PHP',
    changes => 'set allow_url_fopen On',
    require => Package['php5-cli'],
  }

  # download composer
  exec { 'download_composer':
    command => 'curl -s http://getcomposer.org/installer | php',
    cwd     => '/home/vagrant',
    require => [
      Package['curl', 'php5-cli'],
      Augeas['whitelist_phar', 'allow_url_fopen'],
    ],
    creates => "/home/vagrant/composer.phar"
  }

  # ensures that /usr/local/bin directory exists to move composer into
  file { '/usr/local/bin':
    ensure => directory,
  }

  # move composer from /home/vagrant to /usr/local/bin
  file { '/usr/local/bin/composer':
    ensure  => present,
    source  => '/home/vagrant/composer.phar',
    require => [ Exec['download_composer'], File['/usr/local/bin'], ],
    group   => 'staff',
    mode    => '0755',
  }
}