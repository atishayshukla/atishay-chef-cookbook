#
# Cookbook Name:: experiment-cookbook
# Recipe:: apache
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


# Install apache on the box
package 'apache2' do
  action :install
end

# Add the file in location
#cookbook_file '/var/www/html/index.html' do
#  source 'index.html'
#  mode '0644'  
#end

# Start the service
service 'apache2' do
  action [:enable, :start]  
end

# Use template to get the attribute
# notifies here will restart the apache service
template '/var/www/html/index.html' do
  source 'index.html.erb'  
  mode '0644'
  action :create
  variables(
    :message => node["experiment-cookbook"]["message"]
  )
  notifies [:restart], "service[apache2]"
end





