#
# Cookbook:: exs_mean_stack
# Recipe:: nginx
#
# Copyright:: 2020, The Authors, All Rights Reserved.
server_name = 'node.rahmingtech.com'
server_ip = 'localhost'
server_port = '3000'

package 'nginx'
 
template '/etc/nginx/conf.d/nodewebserver.conf' do
    source 'nodewebserver.conf.erb'
    action :create 
    variables(servername: server_name, ipaddress: server_ip, port: server_port) 
end

service 'nginx' do
    action [:enable, :start]
end
 

