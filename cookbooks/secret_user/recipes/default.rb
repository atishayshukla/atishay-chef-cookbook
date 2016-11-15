#
# Cookbook Name:: secret_user
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


# Add user with secret password

user 'ashukla' do
  comment 'Atishay Shukla'
  uid '2000'
  home '/home/ashukla'
  shell '/bin/bash'
  password '$1$tata$pYxO.sx.gos1/jnMsvxGB/'
  action :create
end
