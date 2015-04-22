#
# == Class: nano::params
#
# Defines some variables based on the operating system
#
class nano::params {

    case $::osfamily {
        'RedHat': {
            $package_name = 'nano'
        }
        'Debian': {
            $package_name = 'nano'
        }
        default: {
            fail("Unsupported OS: ${::osfamily}")
        }
    }
}
