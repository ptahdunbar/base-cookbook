if node[:environment] != nil
	node.environment = 'production'
end

Chef::Log.info "!!!!!!! Chef Environment: #{node.environment}"
