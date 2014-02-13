require 'spec_helper'

describe 'yum-percona::default' do
  context 'yum-percona::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new.converge(described_recipe) }

    it 'creates yum_repository[percona]' do
      expect(chef_run).to create_yum_repository('percona')
    end
  end
end
