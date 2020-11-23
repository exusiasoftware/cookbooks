#
# Cookbook:: exs_iis
# Recipe:: default
#
# Copyright:: 2020, The Authors, All Rights Reserved.
powershell_script 'Install IIS' do
    code 'Install-WindowsFeature Web-Server'
    not_if "(Get-WindowsFeature -Name Web-Server).Installed"
end

service 'w3svc' do
    action [:start, :enable]
end