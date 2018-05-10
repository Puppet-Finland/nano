nano
====

A puppet module for installing and configuring the nano editor

# Module usage

Simple usage with default settings (fill=80, tabsize=4, tabstospaces=true:

    include ::nano

Customize nano configuration:

    class { '::nano':
      fill         => 72,
      tabsize      => 4,
      tabstospaces => true,
    }

For details see [init.pp](manifests/init.pp).
