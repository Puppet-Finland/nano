#
# == Class: nano::install
#
# Install nano
#
class nano::install inherits nano::params {
    package { 'nano':
        ensure => installed,
        name   => $::nano::params::package_name,
    }
}
