# InSpec test for recipe exs_mean_stack::mongodb

# The InSpec reference, with examples and extensive documentation, can be
# found at https://www.inspec.io/docs/reference/resources/

if os.family == 'redhat'
    
    describe package('mongodb-org') do
      it { should be_installed }
    end
  
    describe service('mongod') do
      it { should be_enabled }
    end
    
    describe service('mongod') do
      it { should be_running }
    end

end  


  
if os.family == 'debian'

    describe package('mongodb') do
      it { should be_installed }
    end
    
    describe service('mongodb') do
      it { should be_enabled }
    end
    
    describe service('mongodb') do
      it { should be_running }
    end
    
end