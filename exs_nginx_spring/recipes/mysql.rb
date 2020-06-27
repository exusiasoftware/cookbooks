#
# Cookbook:: exs_nginx_spring
# Recipe:: mysql
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'mysql'

service 'mysql' do
  action [:enable, :start]
end
