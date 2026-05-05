# frozen_string_literal: true

require 'spec_helper'

describe 'yum_percona_repo' do
  step_into :yum_percona_repo

  context 'on Red Hat 9 with default properties' do
    platform 'redhat', '9'

    recipe do
      yum_percona_repo 'default'
    end

    it do
      is_expected.to create_yum_repository('percona').with(
        description: 'Percona MySQL and tools repository',
        baseurl: 'https://repo.percona.com/yum/release/9/RPMS/$basearch/',
        gpgkey: 'http://www.percona.com/downloads/RPM-GPG-KEY-percona',
        gpgcheck: true,
        enabled: true
      )
    end
  end

  context 'on Amazon Linux 2023 with current repository layout' do
    platform 'amazon', '2023'

    recipe do
      yum_percona_repo 'default'
    end

    it { is_expected.to create_yum_repository('percona').with(baseurl: 'https://repo.percona.com/yum/release/9/RPMS/$basearch/') }
  end

  context 'with custom repository properties' do
    platform 'redhat', '9'

    recipe do
      yum_percona_repo 'custom' do
        repo_name 'percona-custom'
        baseurl 'https://repo.example.com/percona/$basearch/'
        mirrorlist 'https://repo.example.com/mirrorlist'
        enabled false
        sslverify false
        priority 10
      end
    end

    it do
      is_expected.to create_yum_repository('percona-custom').with(
        baseurl: 'https://repo.example.com/percona/$basearch/',
        mirrorlist: 'https://repo.example.com/mirrorlist',
        enabled: false,
        sslverify: false,
        priority: '10'
      )
    end
  end

  context 'with a legacy-compatible custom baseurl' do
    platform 'redhat', '9'

    recipe do
      yum_percona_repo 'legacy' do
        baseurl 'http://repo.percona.com/centos/7/os/$basearch/'
      end
    end

    it { is_expected.to create_yum_repository('percona').with(baseurl: 'http://repo.percona.com/centos/7/os/$basearch/') }
  end

  context 'with action :remove' do
    platform 'redhat', '9'

    recipe do
      yum_percona_repo 'default' do
        action :remove
      end
    end

    it { is_expected.to remove_yum_repository('percona') }
  end
end
