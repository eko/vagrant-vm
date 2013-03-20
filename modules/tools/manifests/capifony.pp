class tools::capifony {
  include tools

  # download and install capifony (and so capistrano)
  exec { 'download_install_capifony':
    command   => '/opt/vagrant_ruby/bin/gem install capifony',
    require   => Package['gem'],
    logoutput => true,
  }
}