# # encoding: utf-8

# Inspec test for recipe sparta_chef_template_homework::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/

# This is an example test, replace it with your own test.

describe package 'mongodb-org' do
  it {should be_installed}
  its('version') {should match /3.2\./}
end

describe service "mongod" do
  it {should be_running}
  it {should be_enabled}
end

# test that checks what process and address is running on this port
describe port(27017) do
  it {should be_listening}
  its('processes') {should include 'mongod'}
  its('addresses') {should include '0.0.0.0'} # needs clarification 
end
