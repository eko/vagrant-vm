class tools {
  $packages = ["curl", "vim", "libaugeas-ruby", "augeas-tools"]

  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}