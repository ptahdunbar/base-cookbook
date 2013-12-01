#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 Ptah Dunbar
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'base::git_ppa' if node[:base][:latest_git_version]
include_recipe 'base::ssh_known_hosts'
include_recipe 'base::dependencies'
include_recipe 'timezone-ii'
include_recipe 'vim'
include_recipe 'tmux'
include_recipe 'git'
include_recipe 'subversion'
include_recipe 'postfix'

if ! node['authorization']['sudo']['users'].empty?
	include_recipe 'sudo'
end