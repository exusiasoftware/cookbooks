#
# Cookbook:: exs_nginx_spring
# Recipe:: nginx
#
# Copyright:: 2020, The Authors, All Rights Reserved.

server_ip = 'localhost'
server_port = '8080'
server_name = 'node.rahmingtech.com'

package 'nginx'

template '/etc/nginx/conf.d/node.rahmingtech.com.conf' do
    source 'node.rahmingtech.com.conf.erb'
    action :create 
    variables(ipaddress: server_ip, port: server_port) 
end

template '/usr/share/nginx/html/index.html' do
    source 'index.html.erb'
    action :create 
    variables(server_name: server_ip) 
end


service 'nginx' do
    action [:enable, :start]
end