name             'base'
maintainer       'Pirate Dunbar'
maintainer_email 'yarr@piratedunbar.com'
license          'All rights reserved'
description      'Installs/Configures base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.9'

depends "apt"
depends "timezone-ii"
depends "vim"
depends "git"
depends "subversion"
depends "postfix"
depends "ssh_known_hosts"
depends "sudo"
depends "rsync"
depends "users"
depends "yasm"
depends "ffmpeg"

supports "ubuntu"

recipe "base::default", "Base system role cookbook."
recipe "base::dependencies", "Installs system packages registered in the base::dependencies attribute."
recipe "base::ssh_known_hosts", "Registers ssh known hosts to avoid being prompt."
recipe "base::git_ppa", "Registers custom PPA that makes git 1.8 available for installation."
recipe "base::ack", "Renames ack-grep to ack."
