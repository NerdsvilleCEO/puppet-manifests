require 'spec_helper'

describe 'base::ubuntu::packages' do
  test_on = {
    supported_os: [
      {
        'operatingsystem' => 'Ubuntu',
        'operatingsystemrelease' => ['18.04']
      }
    ]
  }

  on_supported_os(test_on).each do |os, os_facts|
    let(:facts) { os_facts }
    it { is_expected.to contain_package('zsh') }
  end
end
