# InSpec test for recipe exs_laravel::nginx

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

# This is an example test, replace it with your own test.
describe port(80), :skip do
  it { be_listening }
end

describe package('nginx') do
  it { should be_installed }
end

describe directory('/var/www/html/rahmingtech.link') do
  it { should exist }
end

describe file('/etc/nginx/sites-enabled/rahmingtech.link') do
  it { should exist  }
end

describe service('nginx') do
  it { should be_enabled }
end

describe service('nginx') do
  it { should be_running }
end