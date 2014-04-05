#
# Cookbook Name:: df_mongodb
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#


file "/etc/yum.repos.dmongodb.repo" do 
	user "root"
	group "root"
	mode "0755" 
	content "[mongodb]\n
name=MongoDB Repository\n
baseurl=http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/\n
gpgcheck=0\n
enabled=1"
action :create
end

	yum_package "mongo-10gen" do
	source node["df_mongodb"]["10gen"]["source"] 
		action :install
	end
	yum_package "mongo-10gen-server" do 
		source node["df_mongodb"]["server"]["source"]
		action :install
	end

service "mongod" do 
	action [:enable, :start]
end

execute "chkconfig mongod on" do 
	user "root"
	action :run
end
