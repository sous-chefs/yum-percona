#
# Author:: Sean OMeara (<someara@chef.io>)
# Recipe:: yum::percona
#
# Copyright 2013-2015, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

yum_repository 'percona' do
  description node['yum']['percona']['description'] if node['yum']['percona']['description']
  baseurl node['yum']['percona']['baseurl'] if node['yum']['percona']['baseurl']
  mirrorlist node['yum']['percona']['mirrorlist'] if node['yum']['percona']['mirrorlist']
  gpgcheck node['yum']['percona']['gpgcheck'] if node['yum']['percona']['gpgcheck']
  gpgkey node['yum']['percona']['gpgkey'] if  node['yum']['percona']['gpgkey']
  enabled node['yum']['percona']['enabled'] if node['yum']['percona']['enabled']
  cost node['yum']['percona']['cost'] if node['yum']['percona']['cost']
  exclude node['yum']['percona']['exclude'] if node['yum']['percona']['exclude']
  enablegroups node['yum']['percona']['enablegroups'] if node['yum']['percona']['enablegroups']
  failovermethod node['yum']['percona']['failovermethod'] if node['yum']['percona']['failovermethod']
  http_caching node['yum']['percona']['http_caching'] if  node['yum']['percona']['http_caching']
  include_config node['yum']['percona']['include_config'] if node['yum']['percona']['include_config']
  includepkgs node['yum']['percona']['includepkgs'] if node['yum']['percona']['includepkgs']
  keepalive node['yum']['percona']['keepalive'] if node['yum']['percona']['keepalive']
  max_retries node['yum']['percona']['max_retries'] if node['yum']['percona']['max_retries']
  metadata_expire node['yum']['percona']['metadata_expire'] if node['yum']['percona']['metadata_expire']
  mirror_expire node['yum']['percona']['mirror_expire'] if  node['yum']['percona']['mirror_expire']
  priority node['yum']['percona']['priority'] if node['yum']['percona']['priority']
  proxy node['yum']['percona']['proxy'] if node['yum']['percona']['proxy']
  proxy_username node['yum']['percona']['proxy_username'] if  node['yum']['percona']['proxy_username']
  proxy_password node['yum']['percona']['proxy_password'] if  node['yum']['percona']['proxy_password']
  repositoryid node['yum']['percona']['repositoryid'] if node['yum']['percona']['repositoryid']
  sslcacert node['yum']['percona']['sslcacert'] if node['yum']['percona']['sslcacert']
  sslclientcert node['yum']['percona']['sslclientcert'] if node['yum']['percona']['sslclientcert']
  sslclientkey node['yum']['percona']['sslclientkey'] if node['yum']['percona']['sslclientkey']
  sslverify node['yum']['percona']['sslverify'] if node['yum']['percona']['sslverify']
  timeout node['yum']['percona']['timeout'] if  node['yum']['percona']['timeout']
  action :create
end
