#
# == Class: nano
#
# Install and configure the nano editor. Configuration affects the system-wide 
# defaults only.
#
# == Parameters
#
# [*manage*]
#   Whether to manage nano with Puppet or not. Valid values are 'yes' (default) 
#   and 'no'.
# [*fill*]
#   Maximum page width. Used with manual justify (Ctrl-J). Defaults to 80.
# [*tabsize*]
#   Size of a tab in characters. Defaults to 4.
# [*tabstospaces*]
#   Convert typed tabs to spaces. Valid values true (default) and false.
#
# == Authors
#
# Samuli Seppänen <samuli.seppanen@gmail.com>
#
# Samuli Seppänen <samuli@openvpn.net>
#
# == License
#
# BSD-license. See file LICENSE for details.
#
class nano
(
    $manage='yes',
    $fill=80,
    $tabsize=4,
    $tabstospaces=true
)
{

if $manage == 'yes' {

    include ::nano::install

    class { '::nano::config':
        fill         => $fill,
        tabsize      => $tabsize,
        tabstospaces => $tabstospaces,
    }
}
}
