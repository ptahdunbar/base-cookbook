
apt_repository "git-1-8" do
	uri				'http://ppa.launchpad.net/git-core/ppa/ubuntu'
	distribution     node['lsb']['codename']
	components       ["main"]
	keyserver        'keyserver.ubuntu.com'
	key              'E1DF1F24'
end