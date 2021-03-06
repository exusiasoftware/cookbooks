# InSpec test for recipe exs_laravel::default

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

unless os.windows?
  # This is an example test, replace with your own test.
  describe user('root'), :skip do
    it { should exist }
  end
end

describe package('mysql') do
  it { should be_installed }
end

describe service('mysql') do
  it { should be_enabled }
end

describe service('mysql') do
  it { should be_running }
end