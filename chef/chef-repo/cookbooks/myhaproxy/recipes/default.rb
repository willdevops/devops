#
# Cookbook Name:: myhaproxy
# Recipe:: default
#This is more information on this recipe
# Copyright (c) 2016 The Authors, All Rights Reserved.
all_web_nodes = search('node',"role:web AND chef_environment:#{node.chef_environment}")

members = []

all_web_nodes.each do |web_node|
  member = 
  { 
    'hostname' => web_node['machinename'],
    'ipaddress' => web_node['myipaddress'],
    'port' => 80,
    'ssl_port' => 443
  }
  members.push(member)
end

node.default['haproxy']['members'] = members

include_recipe 'haproxy::default'
