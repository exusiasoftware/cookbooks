# InSpec test for recipe exs_mean_stack::nginx

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

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

if os.family == 'debian'

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