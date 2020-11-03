#
# Cookbook:: exs_mean_stack
# Recipe:: mongodb
#
# Copyright:: 2020, The Authors, All Rights Reserved.


if node['platform'] == 'centos' 

   template '/etc/yum.repos.d/mongodb-org-4.0.repo' do
         source 'mongodb-org.repo.erb'
         action :create 
         not_if { ::File.exist?('/etc/yum.repos.d/mongodb-org-4.0.repo') }
    end  

    package 'mongodb-org'

    service 'mongod' do
        action [:enable, :start]
     end
end


if node['platform'] == 'ubuntu'   

    package 'mongodb'

    service 'mongodb' do
        action [:enable, :start]
     end
end   