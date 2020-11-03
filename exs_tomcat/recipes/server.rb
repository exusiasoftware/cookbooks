#
# Cookbook:: tomcat
# Recipe:: server.rb
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'java-1.7.0-openjdk-devel'

group 'tomcat'

user 'tomcat' do
  gid 'tomcat'
end

remote_file '/tmp/apache-tomcat-8.0.53.tar.gz' do
  source 'http://apache.mirrors.hoobly.com/tomcat/tomcat-8/v8.0.53/bin/apache-tomcat-8.0.53.tar.gz'
  action :create
  not_if { ::File.exist?('/tmp/apache-tomcat-8.0.53.tar.gz') }
end

directory '/opt/tomcat' do
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  action :create
end

execute 'tar xvf apache-tomcat-8.0.53.tar.gz' do
  command 'tar xvf /tmp/apache-tomcat-8.0.53.tar.gz -C /opt/tomcat --strip-components=1'
  action :run
  not_if { ::File.exist?('/opt/tomcat/conf') }
end

execute 'chgrp -R tomcat /opt/tomcat/conf' do
  command 'chgrp -R tomcat /opt/tomcat/conf'
  action :run
end

execute 'chmod g+rwx /opt/tomcat/conf' do
  command 'chmod g+rwx /opt/tomcat/conf'
  action :run
end

execute 'chmod g+r /opt/tomcat/conf/*' do
  command 'chmod g+r /opt/tomcat/conf/*'
  action :run
end

execute 'chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/' do
  command 'chown -R tomcat /opt/tomcat/webapps/ /opt/tomcat/work/ /opt/tomcat/temp/ /opt/tomcat/logs/'
  action :run
end

template '/etc/systemd/system/tomcat.service' do
  source 'tomcat_service.erb'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end

service 'tomcat.service' do
  action [:enable, :start]
end

template '/opt/tomcat/conf/server.xml' do
  source 'server_xml.erb'
  owner 'tomcat'
  group 'tomcat'
  mode '0755'
  variables(port: node.default['tomcat-port'])
  action :create
  notifies :restart, 'service[tomcat.service]'
end
