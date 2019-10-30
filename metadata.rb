name 'yum-percona'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the Percona Yum repository'
version '3.0.0'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-percona'
issues_url 'https://github.com/chef-cookbooks/yum-percona/issues'
chef_version '>= 12.14'
