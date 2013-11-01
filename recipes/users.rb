#
# Cookbook Name:: base
# Recipe:: users
#
# Copyright (C) 2013 Ptah Dunbar
#
# All rights reserved - Do Not Redistribute
#

node[:base][:users].each do |person|
	user person["name"] do
        group person["group"] if person["group"]
        system person["system"] if person["system"]
        shell person["shell"] if person["shell"]
        home person["home"] if person["home"]
        password person["password"] if person["password"]
    end
end