default[:base]['user']					= 'vagrant'
default[:base]['group']					= 'vagrant'

default[:base]['dependencies']			= %w()
default[:base]['users'] 				= []

default[:tz] 							= 'America/New_York'
default[:chef_environment] 				= 'production'

default[:base][:ssh_known_hosts] 		= %w(github.com)
default[:base][:authorized_keys] 		= []
default[:base][:github_authorized_keys]	= []