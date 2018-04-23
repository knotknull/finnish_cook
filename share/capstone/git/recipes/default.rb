#
# Cookbook:: git
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

# if node['platform_family'] == 'debian'
#   include_recipe 'apt'
#   package 'git'
# elsif node['platform_family'] == 'mac_os_x'
#   include_recipe 'build_essential'
# end

## use case instead
case node['platform_family']
when 'debian'
  include_recipe 'apt'
  package 'git'
when 'mac_os_x'
  include_recipe 'build_essential'
end
