#
# Cookbook:: exs_laravel
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'epel-release'

execute 'yum localinstall' do
    command 'yum localinstall -y https://dev.mysql.com/get/mysql80-community-release-el7-1.noarch.rpm'
    action :run
end

package 'mysql-community-server'

service 'mysqld' do
    action [:enable, :start]
end