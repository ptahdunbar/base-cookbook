name             'base'
maintainer       'Pirate Dunbar'
maintainer_email 'yarr@piratedunbar.com'
license          'All rights reserved'
description      'Installs/Configures base'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.2.0'

depends "apt"
depends "ssh_known_hosts"
depends "sudo"
depends "timezone-ii"
depends "vim"
depends "git"
depends "subversion"
depends "postfix"
depends "rsync"
depends "tmux"
depends "users"

supports "ubuntu"

recipe "base::default", "Base system role cookbook."
recipe "base::dependencies", "Installs system packages registered in the base::dependencies attribute."
recipe "base::ssh_known_hosts", "Registers ssh known hosts to avoid being prompt."
recipe "base::git_ppa", "Registers custom PPA that makes git 1.8 available for installation."
recipe "base::ack", "Renames ack-grep to ack."
