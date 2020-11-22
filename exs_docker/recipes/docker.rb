#
# Cookbook:: exs_docker
# Recipe:: docker
#
# Copyright:: 2020, Brian Rahming, All Rights Reserved.
package "Install Docker" do 
    package_name "docker"
end

execute "Add group to ec2_user" do
    command "usermod -a -G docker ec2-user"
end