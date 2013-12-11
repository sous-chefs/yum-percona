require 'spec_helper'

describe 'yum-percona::default' do
  context 'yum-perconas::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates yum_repository[percona]' do
      expect(chef_run).to create_yum_repository('percona')
    end

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/percona.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/percona.repo')
    end

  end
end
