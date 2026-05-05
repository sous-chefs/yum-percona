# frozen_string_literal: true

title 'yum-percona default repository'

control 'yum-percona-repo-01' do
  impact 1.0
  title 'Percona repository is configured'

  describe yum.repo('percona') do
    it { should exist }
    it { should be_enabled }
  end

  describe ini('/etc/yum.repos.d/percona.repo') do
    its('percona.baseurl') { should cmp "https://repo.percona.com/yum/release/#{os.name == 'amazon' ? '9' : os.release.to_i}/RPMS/$basearch/" }
    its('percona.gpgcheck') { should cmp 1 }
    its('percona.gpgkey') { should cmp 'http://www.percona.com/downloads/RPM-GPG-KEY-percona' }
  end
end
