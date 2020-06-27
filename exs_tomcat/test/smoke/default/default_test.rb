# # encoding: utf-8

# Inspec test for recipe tomcat::default

# The Inspec reference, with examples and extensive documentation, can be
# found at http://inspec.io/docs/reference/resources/





describe package('java-1.7.0-openjdk-devel') do
  it { should be_installed }
end

describe user('tomcat') do
  it { should exist }
end

describe user('tomcat') do
  it { should belong_to_group 'tomcat' }
end

describe group('tomcat') do
  it { should exist }
end

describe file('/tmp/apache-tomcat-8.0.53.tar.gz') do
  it { should exist }
end

describe directory('/opt/tomcat') do
  it { should exist }
end

describe file('/opt/tomcat/conf') do
  it { should exist }
end

describe file('/etc/systemd/system/tomcat.service') do
  it { should exist }
end

describe service('tomcat.service') do
  it { should be_enabled }
end

describe service('tomcat.service') do
  it { should be_running }
end

describe port('80') do
  it { should be_listening }
end
