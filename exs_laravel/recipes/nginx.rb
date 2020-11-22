#
# Cookbook:: exs_laravel
# Recipe:: nginx
#
# Copyright:: 2020, The Authors, All Rights Reserved.
site_name = 'rahmingtech.link'


package 'nginx'


template "/etc/nginx/sites-enabled/#{site_name}" do
    source 'site_domain.erb'
    action :create 
    variables(site_name: site_name) 
end

service 'nginx' do
    action [:enable, :start]
end