#
# Cookbook:: exs_laravel
# Recipe:: mysql
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'mysql'

service 'mysql' do
    action [:enable, :start]
end