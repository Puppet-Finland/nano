#
# == Class: nano::install
#
# Install nano
#
class nano::install {
    package { 'nano':
        name => 'nano',
        ensure => installed,
    }
}
