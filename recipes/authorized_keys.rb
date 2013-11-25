
if node[:base][:authorized_keys]
	node[:base][:authorized_keys].each do |group|
		next unless user_keys["keys"] and user_keys["user"]

		if system("id #{user_keys["user"]} > /dev/null")
			home = `echo ~#{user_keys["user"]}`.delete("\n")
			next unless home

			user_keys["keys"].each do |key|

				Chef::Log.info "[base] authorized_keys for #{key} in #{home}"

				execute "import_authorized_keys" do
					user 'root'
					command "curl key >> #{home}/.ssh/authorized_keys && chmod 400 #{home}/.ssh/authorized_keys"
				end
			end
		end
	end
end

if node[:base][:github_authorized_keys]
	node[:base][:github_authorized_keys].each do |user_keys|
		next unless user_keys["keys"] and user_keys["user"]

		if system("id #{user_keys["user"]} > /dev/null")
			home = `echo ~#{user_keys["user"]}`.delete("\n")
			next unless home

			user_keys["keys"].each do |key|

				Chef::Log.info "[base] github_authorized_keys for #{key} in #{home}"

				execute "import_authorized_keys" do
					user 'root'
					command "curl https://github.com/#{key}.keys >> #{home}/.ssh/authorized_keys && chmod 400 #{home}/.ssh/authorized_keys"
				end
			end
		end
	end
end