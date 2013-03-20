# sets default paths
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

# include following modules
include bootstrap
include apache
include mysql
include php
include php::pear
include symfony
include tools
include tools::composer