class tools {
  $packages = ["curl", "vim", "git", "tig", "gem", "libaugeas-ruby", "augeas-tools"]

  package { $packages:
    ensure => present,
    require => Exec["apt-get update"]
  }
}