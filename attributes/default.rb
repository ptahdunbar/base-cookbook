default[:base][:user]                      		= 'vagrant'
default[:base][:group]					    	= 'vagrant'
default[:base][:ssh_known_hosts]				= %w(github.com)
default[:base][:latest_git_version]				= false
default[:base][:vagrant_insecure_key]			= "https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub"

node.set_unless[:base][:dependencies]			= %w(htop)
node.set_unless[:base][:authorized_keys]		= []
node.set_unless[:base][:github_authorized_keys]	= []
node.set_unless[:tz]							= 'America/New_York'
node.set_unless[:env] 				    		= 'production'
node.set[:php][:environment] 					= node[:env]
