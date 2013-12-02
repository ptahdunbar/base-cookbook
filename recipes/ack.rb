#
# Cookbook Name:: base
# Recipe:: ack
#
# Copyright (C) 2013 Ptah Dunbar
#
# All rights reserved - Do Not Redistribute
#

package "ack-grep"

execute "rename ack-grep to ack" do
	command "sudo dpkg-divert --local --divert /usr/bin/ack --rename --add /usr/bin/ack-grep"
end