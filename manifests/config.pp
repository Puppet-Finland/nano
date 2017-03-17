#
# == Class: nano::config
#
# Configure nano
#
class nano::config
(
    Integer        $fill,
    Integer[0,16]  $tabsize,
    Boolean        $tabstospaces,

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
