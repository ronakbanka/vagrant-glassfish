#
# Cookbook Name:: glassfish
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
package "unzip" do
  action :install
end

remote_file "/opt/glassfish.zip" do
  source "http://download.java.net/glassfish/3.1.1/release/glassfish-3.1.1.zip"
  owner "root"
  group "root"
  mode 0755
end

execute "start server" do
  command "cd /opt && sudo unzip glassfish.zip && sudo glassfish3/bin/asadmin start-domain"
  action :run
end
