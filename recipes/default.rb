#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 Ptah Dunbar
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'git'
include_recipe 'subversion'
include_recipe 'postfix'

include_recipe 'base::environment'
include_recipe 'base::users'
include_recipe 'base::dependencies'
include_recipe 'base::ssh_known_hosts'
include_recipe 'base::authorized_keys'
include_recipe 'base::ack'
