require 'spec_helper'
describe 'unika' do
  context 'on CentOS' do
    let(:facts) { {
      :operatingsystem => 'CentOS'
    } }
    it { 
      #should contain_class('unika') 
      should contain_file('/etc/unika-version').with(
        'owner' => 'root',
        'group' => 'root',
        'mode'  => '0600'
      ).with_content("unika for #{facts[:operatingsystem]}\n")
    }
  end
  context 'on RedHat' do
    let(:facts) { {
      :operatingsystem => 'RedHat'
    } }
    it { 
      #should contain_class('unika') 
      should contain_file('/etc/unika-version').with(
        'owner' => 'root',
        'group' => 'root',
        'mode'  => '0600'
      ).with_content("unika for #{facts[:operatingsystem]}\n")
    }
  end
  context 'on OS X' do
    let(:facts) { {
      :operatingsystem => 'OS X'
    } }
    it { 
      #should contain_class('unika') 
      should contain_file('/etc/unika-version').with(
        'owner' => 'root',
        'group' => 'wheel',
        'mode'  => '0600'
      ).with_content("unika for #{facts[:operatingsystem]}\n")
    }
  end
  context 'on Debian' do
    let(:facts) { {
      :operatingsystem => 'Debian'
    } }
    it { 
      #should contain_class('unika') 
      should contain_file('/etc/unika-version').with(
        'owner' => 'root',
        'group' => 'root',
        'mode'  => '0600'
      ).with_content("unika for #{facts[:operatingsystem]}\n")
    }
  end
end
