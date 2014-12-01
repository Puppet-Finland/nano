#
# == Class: nano::config
#
# Configure nano
#
class nano::config
(
    $fill,
    $tabsize,
    $tabstospaces,
)
{

    if $tabstospaces == 'true' {
        $tabstospaces_line = 'set tabstospaces'
    } else {
        $tabstospaces_line = ''
    }

    file { 'nano-nanorc':
        ensure => present,
        name => '/etc/nanorc',
        content => template('nano/nanorc.erb'),
        owner => root,
        group => root,
        mode => 644,
    }
}
