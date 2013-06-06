#
# == Class: nano::config
#
# Configure nano
#
class nano::config
(
    $conflines=['']
)
{
    file { 'nano-nanorc':
        ensure => present,
        name => '/etc/nanorc',
        content => template('nano/nanorc.erb'),
        owner => root,
        group => root,
        mode => 644,
    }
}
