#
# Cookbook:: exs_laravel
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
site_name = 'rahmingtech.link'

package 'epel-release'
package 'nginx'

directory '/etc/nginx/sites-enabled/' do
    action :create
end


directory "/var/www/html/#{site_name}" do
    owner 'nginx'
    group 'nginx'
    mode '0755'
    recursive true
    action :create
end

template "/etc/nginx/nginx.conf" do
    source 'nginx.conf.erb'
    action :create 
end


template "/etc/nginx/sites-enabled/#{site_name}" do
    source 'site_domain.erb'
    action :create 
    variables(site_name: site_name) 
end

service 'nginx' do
    action [:enable, :start]
end








service 'nginx' do
    action [:enable, :start]
end