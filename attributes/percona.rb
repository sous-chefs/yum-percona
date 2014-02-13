default['yum']['percona']['description'] = 'Percona MySQL and tools repository'
case node['platform']
when 'amazon'
  default['yum']['percona']['baseurl'] = 'http://repo.percona.com/centos/6/os/$basearch/'
else
  default['yum']['percona']['baseurl'] = "http://repo.percona.com/centos/#{node['platform_version'].to_i}/os/$basearch/"
end
default['yum']['percona']['gpgkey'] = 'http://www.percona.com/downloads/RPM-GPG-KEY-percona'
default['yum']['percona']['gpgcheck'] = true
default['yum']['percona']['enabled'] = true
