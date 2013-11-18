
if node[:base][:ssh_known_hosts]
	node[:base][:ssh_known_hosts].each do |host|
		ssh_known_hosts_entry host.to_s
	end
end