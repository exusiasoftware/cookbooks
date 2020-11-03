# InSpec test for recipe exs_mean_stack::nodejs

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/


puts "################## " + os.family + " ######################"

if os.family == 'redhat'

  describe package('git') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end

  describe package('npm') do
    it { should be_installed }
  end
end


if os.family == 'debian'

  describe package('git') do
    it { should be_installed }
  end

  describe package('nodejs') do
    it { should be_installed }
  end

  describe package('npm') do
    it { should be_installed }
  end
end





