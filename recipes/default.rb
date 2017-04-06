#
# Author:: Sean OMeara (<someara@chef.io>)
# Recipe:: default
# Cookbook:: yum-percona
#
# Copyright:: 2013-2017, Chef Software, Inc.
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
  description node['yum']['percona']['description'] unless node['yum']['percona']['description'].nil?
  baseurl node['yum']['percona']['baseurl'] unless node['yum']['percona']['baseurl'].nil?
  mirrorlist node['yum']['percona']['mirrorlist'] unless node['yum']['percona']['mirrorlist'].nil?
  gpgcheck node['yum']['percona']['gpgcheck'] unless node['yum']['percona']['gpgcheck'].nil?
  gpgkey node['yum']['percona']['gpgkey'] unless node['yum']['percona']['gpgkey'].nil?
  enabled node['yum']['percona']['enabled'] unless node['yum']['percona']['enabled'].nil?
  cost node['yum']['percona']['cost'] unless node['yum']['percona']['cost'].nil?
  exclude node['yum']['percona']['exclude'] unless node['yum']['percona']['exclude'].nil?
  enablegroups node['yum']['percona']['enablegroups'] unless node['yum']['percona']['enablegroups'].nil?
  failovermethod node['yum']['percona']['failovermethod'] unless node['yum']['percona']['failovermethod'].nil?
  http_caching node['yum']['percona']['http_caching'] unless node['yum']['percona']['http_caching'].nil?
  include_config node['yum']['percona']['include_config'] unless node['yum']['percona']['include_config'].nil?
  includepkgs node['yum']['percona']['includepkgs'] unless node['yum']['percona']['includepkgs'].nil?
  keepalive node['yum']['percona']['keepalive'] unless node['yum']['percona']['keepalive'].nil?
  max_retries node['yum']['percona']['max_retries'] unless node['yum']['percona']['max_retries'].nil?
  metadata_expire node['yum']['percona']['metadata_expire'] unless node['yum']['percona']['metadata_expire'].nil?
  mirror_expire node['yum']['percona']['mirror_expire'] unless node['yum']['percona']['mirror_expire'].nil?
  priority node['yum']['percona']['priority'] unless node['yum']['percona']['priority'].nil?
  proxy node['yum']['percona']['proxy'] unless node['yum']['percona']['proxy'].nil?
  proxy_username node['yum']['percona']['proxy_username'] unless node['yum']['percona']['proxy_username'].nil?
  proxy_password node['yum']['percona']['proxy_password'] unless node['yum']['percona']['proxy_password'].nil?
  repositoryid node['yum']['percona']['repositoryid'] unless node['yum']['percona']['repositoryid'].nil?
  sslcacert node['yum']['percona']['sslcacert'] unless node['yum']['percona']['sslcacert'].nil?
  sslclientcert node['yum']['percona']['sslclientcert'] unless node['yum']['percona']['sslclientcert'].nil?
  sslclientkey node['yum']['percona']['sslclientkey'] unless node['yum']['percona']['sslclientkey'].nil?
  sslverify node['yum']['percona']['sslverify'] unless node['yum']['percona']['sslverify'].nil?
  timeout node['yum']['percona']['timeout'] unless node['yum']['percona']['timeout'].nil?
  action :create
end
