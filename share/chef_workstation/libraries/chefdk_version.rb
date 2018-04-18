class ChefdkVersion < Inspec.resource(1)
  name 'chefdk_version'


  def initialize
    chef_ver = inspec.command('/opt/chefdk/bin/chef --version').stdout
    ver=chef_ver.match(/Chef Development Kit Version: (\d+\.\d+\.\d+)/)[1]
    @major_ver=ver.split('.')[0]
    @minor_ver=ver.split('.')[1]
    @patch_ver=ver.split('.')[2]
  end

  def major_ver
    @major_ver.to_i
  end

  def minor_ver
    @minor_ver.to_i
  end

  def patch_ver
    @patch_ver.to_i
  end

end
