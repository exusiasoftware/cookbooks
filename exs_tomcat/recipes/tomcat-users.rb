#
# Cookbook:: tomcat
# Recipe:: tomcat-users
#
# Copyright:: 2018, The Authors, All Rights Reserved.
template '/opt/tomcat/conf/tomcat-users.xml' do
  source 'tomcat_users_xml.erb'
  owner 'root'
  group 'tomcat'
  mode '0640'
  variables(username: node.default['username'], password: node.default['password'])
  action :create
  notifies :restart, 'service[tomcat.service]'
end
