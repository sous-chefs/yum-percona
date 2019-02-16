require 'spec_helper'

describe 'yum-percona::default' do
  context 'yum-percona::default uses default attributes' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

    it 'creates yum_repository[percona]' do
      expect(chef_run).to create_yum_repository('percona')
    end
  end

  context 'yum-percona::default uses 2019 yum gpg key' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

    it 'creates yum_repository[percona]' do
      expect(chef_run).to create_yum_repository('percona').with(
        gpgkey: [
          'https://repo.percona.com/yum/PERCONA-PACKAGING-KEY',
          'https://repo.percona.com/yum/RPM-GPG-KEY-Percona',
        ]
      )
    end
  end
end
