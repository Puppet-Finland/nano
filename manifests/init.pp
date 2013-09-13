#
# == Class: nano
#
# Install and configure the nano editor. Configuration affects the system-wide 
# defaults only.
#
# == Parameters
#
# [*conflines*]
#   An array containing all the lines to add to the nano configuration file.
#
# == Examples
#
# class { 'nano':
#   conflines => [ 'include /usr/share/nano/sh.nanorc',
#                  'set fill 80',
#                  'set tabsize 4',
#                  'set tabstospaces'
# }
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-lisence
# See file LICENSE for details
#
class nano
(
    $conflines=['']
)
{
# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_nano', 'true') != 'false' {

    include nano::install

    class { 'nano::config':
        conflines => $conflines,
    }
}
}
