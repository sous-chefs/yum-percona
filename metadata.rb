name 'yum-percona'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache-2.0'
description 'Installs and configures the Percona Yum repository'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '3.0.0'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-percona'
issues_url 'https://github.com/chef-cookbooks/yum-percona/issues'
chef_version '>= 12.14' if respond_to?(:chef_version)
