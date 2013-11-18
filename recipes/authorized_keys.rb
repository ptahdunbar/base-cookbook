
if node[:base][:authorized_keys]
	node[:base][:authorized_keys].each do |group|
		if group["keys"] and group["path"]
			group["keys"].split(' ').each do |url|
				execute "import_authorized_keys" do
					user 'root'
					command "curl #{url} >> #{group["path"]}/.ssh/authorized_keys"
					command "chmod 400 #{group["path"]}/.ssh/authorized_keys"
				end
			end
		end
	end
end

if node[:base][:github_authorized_keys]
	node[:base][:github_authorized_keys].each do |group|
		if group["usernames"] and group["home_path"]
			group["usernames"].split(' ').each do |username|
				execute "import_authorized_keys" do
					user 'root'
					command "curl https://github.com/#{username}.keys >> #{group["home_path"]}/.ssh/authorized_keys"
					command "chmod 400 #{group["home_path"]}/.ssh/authorized_keys"
				end
			end
		end
	end
end