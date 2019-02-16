describe command('yum -y install proxysql') do
  its('exit_status') { should eq 0 }
end
