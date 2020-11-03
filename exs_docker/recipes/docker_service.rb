#
# Cookbook:: exs_docker
# Recipe:: docker_service
#
# Copyright:: 2020, Brian Rahming, All Rights Reserved.
service "Manage Docker Service" do 
    action :start
    service_name 'docker'
end