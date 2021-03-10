describe yum.repo('percona') do
  it { should exist }
  it { should be_enabled }
  its('baseurl') { should cmp "http://repo.percona.com/centos/#{os.name == 'amazon' ? '7' : os.release.to_i}/os/x86_64/" }
end

describe ini('/etc/yum.repos.d/percona.repo') do
  its('percona.gpgcheck') { should cmp 1 }
  its('percona.gpgkey') { should cmp 'http://www.percona.com/downloads/RPM-GPG-KEY-percona' }
end
