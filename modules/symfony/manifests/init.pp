class symfony {
  # ensures that workspace directory exists
  file { "/vagrant/workspace":
      ensure => "directory",
  }

  # installs symfony via composer
  exec { 'install_symfony':
    command   => '/usr/local/bin/composer create-project symfony/framework-standard-edition symfony/ 2.2.0',
    cwd       => '/vagrant/workspace',
    logoutput => true,
  }

  # installs symfony vendors using composer
  exec { 'install_symfony_vendors':
    command   => '/usr/local/bin/composer install',
    cwd       => '/vagrant/workspace/symfony',
    logoutput => true,
  }
}