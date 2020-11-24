#
# Cookbook:: exs_opsworks_cookbook
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
Chef::Log.info("********** Hello, World! **********")


package "Install Emacs" do
    package_name "emacs"
end

user "Add a user" do
    home "/home/jdoe"
    shell "/bin/bash"
    username "jdoe"
end

directory "Create a directory" do
    group "root"
    mode "0755"
    owner "ec2-user"
    path "/tmp/create-directory-demo"
end

file "Create a file" do
    content "<html>This is a placeholder for the home page.</html>"
    group "root"
    mode "0755"
    owner "ec2-user"
    path "/tmp/create-directory-demo/index.html"
end

cookbook_file "Copy a file" do
    group "root"
    mode "0755"
    owner "ec2-user"
    path "/tmp/create-directory-demo/hello.txt"
    source "hello.txt"
end

execute "Create an SSH key" do
    command "ssh-keygen -f /tmp/my-key -N fLyC3jbY"
end

script "Run a script" do
    interpreter "bash"
    code <<-EOH
    mkdir -m 777 /tmp/run-script-demo
    touch /tmp/run-script-demo/helloworld.txt
    echo "Hello, World!" > /tmp/run-script-demo/helloworld.txt
    EOH
end

service "Manage a service" do
    action :stop
    service_name "crond"
end