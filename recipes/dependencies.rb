#
# Cookbook Name:: base
# Recipe:: dependencies
#
# Copyright (C) 2013 Ptah Dunbar
#
# All rights reserved - Do Not Redistribute
#

node[:base]['dependencies'].each do |pkg|
	package pkg
end