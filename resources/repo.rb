# frozen_string_literal: true

provides :yum_percona_repo
unified_mode true

property :repo_name, String,
         default: 'percona',
         description: 'YUM repository ID to manage'

property :description, [String, nil],
         default: 'Percona MySQL and tools repository',
         description: 'Repository description'

property :baseurl, [String, nil],
         description: 'Repository base URL'

property :mirrorlist, [String, nil],
         description: 'Repository mirror list URL'

property :gpgkey, [String, Array, nil],
         default: 'http://www.percona.com/downloads/RPM-GPG-KEY-percona',
         description: 'Repository GPG key URL'

property :gpgcheck, [true, false, nil],
         default: true,
         description: 'Enable GPG checks'

property :enabled, [true, false, nil],
         default: true,
         description: 'Enable the repository'

property :cost, [Integer, String, nil], default: nil
property :exclude, [String, Array, nil], default: nil
property :enablegroups, [true, false, nil], default: nil
property :failovermethod, [String, nil]
property :http_caching, [String, nil]
property :include_config, [String, nil]
property :includepkgs, [String, Array, nil], default: nil
property :keepalive, [true, false, nil], default: nil
property :max_retries, [Integer, String, nil], default: nil
property :metadata_expire, [String, nil]
property :mirror_expire, [String, nil]
property :priority, [Integer, String, nil], default: nil
property :proxy, [String, nil]
property :proxy_username, [String, nil]
property :proxy_password, [String, nil], sensitive: true
property :repositoryid, [String, nil]
property :sslcacert, [String, nil]
property :sslclientcert, [String, nil]
property :sslclientkey, [String, nil]
property :sslverify, [true, false, nil], default: nil
property :timeout, [Integer, String, nil], default: nil

default_action :create

action :create do
  yum_repository new_resource.repo_name do
    description new_resource.description unless new_resource.description.nil?
    baseurl(new_resource.baseurl || default_baseurl)
    mirrorlist new_resource.mirrorlist unless new_resource.mirrorlist.nil?
    gpgcheck new_resource.gpgcheck unless new_resource.gpgcheck.nil?
    gpgkey new_resource.gpgkey unless new_resource.gpgkey.nil?
    enabled new_resource.enabled unless new_resource.enabled.nil?
    cost new_resource.cost unless new_resource.cost.nil?
    exclude new_resource.exclude unless new_resource.exclude.nil?
    enablegroups new_resource.enablegroups unless new_resource.enablegroups.nil?
    failovermethod new_resource.failovermethod unless new_resource.failovermethod.nil?
    http_caching new_resource.http_caching unless new_resource.http_caching.nil?
    include_config new_resource.include_config unless new_resource.include_config.nil?
    includepkgs new_resource.includepkgs unless new_resource.includepkgs.nil?
    keepalive new_resource.keepalive unless new_resource.keepalive.nil?
    max_retries new_resource.max_retries unless new_resource.max_retries.nil?
    metadata_expire new_resource.metadata_expire unless new_resource.metadata_expire.nil?
    mirror_expire new_resource.mirror_expire unless new_resource.mirror_expire.nil?
    priority new_resource.priority.to_s unless new_resource.priority.nil?
    proxy new_resource.proxy unless new_resource.proxy.nil?
    proxy_username new_resource.proxy_username unless new_resource.proxy_username.nil?
    proxy_password new_resource.proxy_password unless new_resource.proxy_password.nil?
    repositoryid new_resource.repositoryid unless new_resource.repositoryid.nil?
    sslcacert new_resource.sslcacert unless new_resource.sslcacert.nil?
    sslclientcert new_resource.sslclientcert unless new_resource.sslclientcert.nil?
    sslclientkey new_resource.sslclientkey unless new_resource.sslclientkey.nil?
    sslverify new_resource.sslverify unless new_resource.sslverify.nil?
    timeout new_resource.timeout unless new_resource.timeout.nil?
    action :create
  end
end

action :remove do
  yum_repository new_resource.repo_name do
    action :remove
  end
end

action_class do
  def default_baseurl
    major_version = platform?('amazon') ? 9 : node['platform_version'].to_i

    "https://repo.percona.com/yum/release/#{major_version}/RPMS/$basearch/"
  end
end
