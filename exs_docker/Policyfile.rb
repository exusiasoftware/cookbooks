# Policyfile.rb - Describe how you want Chef Infra Client to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'exs_docker'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'exs_docker::default'

# Specify a custom source for a single cookbook:
cookbook 'exs_docker', path: '.'
#https://s3.amazonaws.com/cookbooks-rahmingtech/esx_docker.zip