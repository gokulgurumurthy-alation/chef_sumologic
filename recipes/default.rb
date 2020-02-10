#
# Cookbook Name:: create
# Recipe:: default
#
# Copyright (C) 2019 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'sumologic-collector::default'

if Chef::Config[:solo]
  template "#{node['sumologic']['sumo_json_path']}/cloud-init.json" do
    source 'cloud-init.json.erb'
    variables(category: node['sumologic']['syslog_cat'])
  end

  service 'collector' do
    # rubocop:disable Style/SymbolArray
    action [:start, :restart]
    # rubocop:enable Style/SymbolArray
  end
end
