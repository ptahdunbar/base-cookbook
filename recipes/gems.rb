#
# Cookbook Name:: base
# Recipe:: gems
#
# Copyright (C) 2013 Ptah Dunbar
#
# All rights reserved - Do Not Redistribute
#

if node[:base]['gems']
	node[:base]['gems'].each do |pkg|
		gem_package pkg
	end
end