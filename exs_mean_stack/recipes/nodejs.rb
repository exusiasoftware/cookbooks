#
# Cookbook:: exs_mean_stack
# Recipe:: nodejs
#
# Copyright:: 2020, The Authors, All Rights Reserved.
package 'nodejs'
package 'git'

if node['platform'] == 'ubuntu'  
    apt_update 'update'
    package 'npm'
end  







