#
# Cookbook Name:: secret_user
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


# Add user with secret password

# Pick data from data_bag so that it can be supplied to user ashukla

ashukla_password = data_bag_item('secret_user', 'user')

user 'ashukla' do
  comment 'Atishay Shukla'
  uid '2000'
  home '/home/ashukla'
  shell '/bin/bash'
  password ashukla_password['password']
  action :create
end
