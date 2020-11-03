#
# Cookbook:: exs_docker
# Recipe:: docker_image
#
# Copyright:: 2020, Brian Rahming, All Rights Reserved.
execute "Download Image" do
    command "docker pull tomcat"
    command "docker run -p 80:8080 -d --name tomcat tomcat"
end