#
# Cookbook Name:: experiment-cookbook
# Recipe:: update_os
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Update the Ubuntu OS for now. TODO: Make it generic for centos and Ubuntu later

execute 'update_os' do
  command 'apt-get update && apt-get upgrade'
  action :run
end

