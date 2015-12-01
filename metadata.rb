name 'yum-percona'
maintainer 'Chef Software, Inc.'
maintainer_email 'cookbooks@chef.io'
license 'Apache 2.0'
description 'Installs and configures the Percona Yum repository'
version '0.2.4'

depends 'yum', '~> 3.2'

%w(amazon centos fedora oracle redhat scientific).each do |os|
  supports os
end

source_url 'https://github.com/chef-cookbooks/yum-percona' if respond_to?(:source_url)
issues_url 'https://github.com/chef-cookbooks/yum-percona/issues' if respond_to?(:issues_url)
