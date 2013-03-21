# sets default paths
Exec {
  path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

# required packages
include bootstrap
include tools
include tools::capifony
include tools::composer
include tools::ohmyzsh
include apache
include varnish
include mysql
include php
include php::pear

# optional packages
#include symfony # this module install a clean symfony project