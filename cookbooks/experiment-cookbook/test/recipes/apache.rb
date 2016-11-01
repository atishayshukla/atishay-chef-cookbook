# # encoding: utf-8

# Inspec test for recipe experiment-cookbook::apache

# The Inspec reference, with examples and extensive documentation, can be
# found at https://docs.chef.io/inspec_reference.html

describe package( 'apache2' ) do
  it { should be_installed }
end

describe service( 'apache2' ) do
  it { should be_enabled }
  it { should be_running }
end

describe file('/var/www/html/index.html') do
  it { should be_file }
  it { should exist }
  its ('mode') { should cmp '0644'}
end

describe port(80) do
  it { should be_listening }
  its('processes') { should include 'apache2' }
end
