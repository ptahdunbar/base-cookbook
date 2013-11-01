#
# Cookbook Name:: base
# Recipe:: packages
#
# Copyright (C) 2013 Ptah Dunbar
#
# All rights reserved - Do Not Redistribute
#

node[:base]['packages'].each do |pkg|
	package pkg
end