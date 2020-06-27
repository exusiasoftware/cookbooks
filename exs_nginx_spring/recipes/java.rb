#
# Cookbook:: exs_nginx_spring
# Recipe:: java
#
# Copyright:: 2020, The Authors, All Rights Reserved.
java_spring_app_name = 'customer-api'
java_spring_app = 'customer-api-1.0.0.jar'


package 'java-1.8.0-openjdk-devel'
package 'maven'
package 'git'

git '/opt/' + java_spring_app_name do
    repository 'https://github.com/exusiasoftware/' + java_spring_app_name + '.git'
    not_if { ::File.exist?('/opt/' + java_spring_app_name) }
end

execute 'mvn clean install' do
    cwd  '/opt/' + java_spring_app_name
    command 'mvn clean install'
    action :run
    not_if { ::File.exist?('/opt/' + java_spring_app_name + '/target/' + java_spring_app) }
end


template '/etc/systemd/system/spring.service' do
    source 'spring.service.erb'
    action :create 
    variables(java_spring_app_name: java_spring_app_name, java_spring_app: java_spring_app) 
end

service 'spring' do
    action [:enable, :start]
end
