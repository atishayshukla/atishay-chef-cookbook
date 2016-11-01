#
# Cookbook Name:: experiment-cookbook
# Recipe:: update_os
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Update the Ubuntu OS for now. TODO: Make it generic for centos and Ubuntu later

# Wrote only_if to get the update only if necessary Idempotency

execute 'update_os' do
  command 'apt-get update && apt-get upgrade -y'
  action :run
  only_if do
   File.exists?('/var/lib/apt/periodic/update-success-stamp') &&
   File.mtime('/var/lib/apt/periodic/update-success-stamp') < Time.now - 86400
  end
end

