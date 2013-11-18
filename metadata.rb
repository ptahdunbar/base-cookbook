name             'base'
maintainer       'Ptah Dunbar'
maintainer_email 'yarr@piratedunbar.com'
license          'All rights reserved'
description      'Installs/Configures base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.0'

depends "git"
depends "subversion"
depends "postfix"
depends 'ntp'
depends 'timezone'
depends 'ssh_known_hosts'

supports "ubuntu"

recipe "base::default", "Installs basic utilities for a bare-bones system."