default['yum']['percona']['description'] = 'Percona MySQL and tools repository'
default['yum']['percona']['baseurl'] = if platform?('amazon')
                                         'http://repo.percona.com/centos/6/os/$basearch/'
                                       else
                                         "http://repo.percona.com/centos/#{node['platform_version'].to_i}/os/$basearch/"
                                       end
default['yum']['percona']['gpgkey'] = [
  'https://repo.percona.com/yum/PERCONA-PACKAGING-KEY',
  'https://repo.percona.com/yum/RPM-GPG-KEY-Percona',
]
default['yum']['percona']['gpgcheck'] = true
default['yum']['percona']['enabled'] = true
