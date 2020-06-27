# InSpec test for recipe exs_nginx_spring::nginx

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

if os.family == 'redhat'

  describe package('nginx') do
    it { should be_installed }
  end

  describe service('nginx') do
    it { should be_enabled }
  end

  describe service('nginx') do
    it { should be_running }
  end

  describe port('80') do
    it { should be_listening }
  end

end