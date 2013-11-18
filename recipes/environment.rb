if node[:chef_environment] != nil
	node.chef_environment = 'production'
end

Chef::Log.info "!!!!!!! Chef Environment: #{node.chef_environment}"