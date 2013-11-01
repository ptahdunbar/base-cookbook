#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright (C) 2013 Ptah Dunbar
# 
# All rights reserved - Do Not Redistribute
#

include_recipe 'git'
include_recipe 'subversion'
include_recipe 'postfix'

include_recipe 'base::users'
include_recipe 'base::packages'
include_recipe 'base::ack'