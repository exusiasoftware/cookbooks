#
# Cookbook:: exs_docker
# Recipe:: docker_image
#
# Copyright:: 2020, Brian Rahming, All Rights Reserved.
execute "Download Image" do
    command "docker pull exusiasoftware/customer-api"
    command "docker run -d -p 80:8080 --name customer-api exusiasoftware/customer-api:latest"
end
