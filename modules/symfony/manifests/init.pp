class symfony {
  # ensures that workspace directory exists
  file { "/vagrant/workspace":
      ensure => "directory",
  }

  # todo: install symfony via composer
}