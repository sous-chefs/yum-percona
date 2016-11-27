describe command('yum -y install percona-release') do
  its('exit_status') { should eq 0 }
end
