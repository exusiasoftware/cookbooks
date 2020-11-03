#
# Cookbook:: exs_apache
# Recipe:: default
#
# Copyright:: 2020, Brian Rahming, All Rights Reserved.
package 'httpd'

service 'httpd' do
    action [:enable, :start]
end