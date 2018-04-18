control 'ChefDK is installed' do
  describe file('/opt/chefdk/bin/chef') do
    it { should exist }
  end

  describe command('/opt/chefdk/bin/chef --version') do
    its('stdout') { should match(/Chef Development Kit Version: [^01]\.\d+\.\d/) }
  end
end

control 'ChefDK is at least 2.0.0' do

    describe(chefdk_version) do
      its('major_ver') { should be >= 2}
      its('minor_ver') { should be >= 5}
      its('patch_ver') { should be >= 0}
    end
end
