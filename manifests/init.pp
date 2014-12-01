#
# == Class: nano
#
# Install and configure the nano editor. Configuration affects the system-wide 
# defaults only.
#
# == Parameters
#
# [*fill*]
#   Maximum page width. Used with manual justify (Ctrl-J). Defaults to '80'.
# [*tabsize*]
#   Size of a tab in characters. Defaults to '4'.
# [*tabstospaces*]
#   Convert typed tabs to spaces. Valid values 'true' (default) and 'false'.
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
    $fill='80',
    $tabsize='4',
    $tabstospaces='true'
)
{
# Rationale for this is explained in init.pp of the sshd module
if hiera('manage_nano', 'true') != 'false' {

    include nano::install

    class { 'nano::config':
        fill => $fill,
        tabsize => $tabsize,
        tabstospaces => $tabstospaces,
    }
}
}
