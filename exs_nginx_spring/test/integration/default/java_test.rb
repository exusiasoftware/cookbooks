# InSpec test for recipe exs_nginx_spring::java

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe package('java-1.8.0-openjdk-devel') do
  it { should be_installed }
end

describe file('/opt/customer-api') do
  it { should be_directory }
end

describe file('/opt/customer-api/target/customer-api-1.0.0.jar') do
  it { should be_file }
end

describe file('/etc/systemd/system/spring.service') do
  it { should be_file }
end

describe service('spring') do
  it { should be_enabled }
end

describe service('spring') do
  it { should be_running }
end