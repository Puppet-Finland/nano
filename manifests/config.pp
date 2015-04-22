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

) inherits nano::params
{

    if str2bool($tabstospaces) {
        $tabstospaces_line = 'set tabstospaces'
    } else {
        $tabstospaces_line = undef
    }

    file { 'nano-nanorc':
        ensure  => present,
        name    => '/etc/nanorc',
        content => template('nano/nanorc.erb'),
        owner   => $::os::params::adminuser,
        group   => $::os::params::admingroup,
        mode    => '0644',
    }
}
