node.set_unless['env'] = 'production'

Chef::Log.info "[base] Environment: #{node.env}"