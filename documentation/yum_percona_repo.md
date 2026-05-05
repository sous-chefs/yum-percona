# yum_percona_repo

Manages the Percona YUM repository using Chef's built-in `yum_repository` resource.

## Actions

| Action    | Description                              |
|-----------|------------------------------------------|
| `:create` | Creates the repository (default)         |
| `:remove` | Removes the repository                   |

## Properties

| Property          | Type                  | Default                                                  | Description                         |
|-------------------|-----------------------|----------------------------------------------------------|-------------------------------------|
| `repo_name`       | String                | `'percona'`                                              | Repository ID to manage             |
| `description`     | String, nil           | `'Percona MySQL and tools repository'`                   | Repository description              |
| `baseurl`         | String, nil           | helper-derived current Percona release URL               | Repository base URL                 |
| `mirrorlist`      | String, nil           | `nil`                                                    | Repository mirror list URL          |
| `gpgkey`          | String, Array, nil    | `'http://www.percona.com/downloads/RPM-GPG-KEY-percona'` | Repository GPG key                  |
| `gpgcheck`        | true, false, nil      | `true`                                                   | Enables GPG checks                  |
| `enabled`         | true, false, nil      | `true`                                                   | Enables the repository              |
| `cost`            | Integer, String, nil  | `nil`                                                    | Passed to `yum_repository`          |
| `exclude`         | String, Array, nil    | `nil`                                                    | Passed to `yum_repository`          |
| `enablegroups`    | true, false, nil      | `nil`                                                    | Passed to `yum_repository`          |
| `failovermethod`  | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `http_caching`    | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `include_config`  | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `includepkgs`     | String, Array, nil    | `nil`                                                    | Passed to `yum_repository`          |
| `keepalive`       | true, false, nil      | `nil`                                                    | Passed to `yum_repository`          |
| `max_retries`     | Integer, String, nil  | `nil`                                                    | Passed to `yum_repository`          |
| `metadata_expire` | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `mirror_expire`   | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `priority`        | Integer, String, nil  | `nil`                                                    | Passed to `yum_repository`          |
| `proxy`           | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `proxy_username`  | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `proxy_password`  | String, nil           | `nil`                                                    | Sensitive proxy password            |
| `repositoryid`    | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `sslcacert`       | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `sslclientcert`   | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `sslclientkey`    | String, nil           | `nil`                                                    | Passed to `yum_repository`          |
| `sslverify`       | true, false, nil      | `nil`                                                    | Passed to `yum_repository`          |
| `timeout`         | Integer, String, nil  | `nil`                                                    | Passed to `yum_repository`          |

## Examples

### Basic usage

```ruby
yum_percona_repo 'percona'
```

### Disable the repository

```ruby
yum_percona_repo 'percona' do
  enabled false
end
```

### Internal mirror

```ruby
yum_percona_repo 'percona' do
  baseurl 'https://internal.example.com/centos/9/os/x86_64/'
  mirrorlist nil
  sslverify false
end
```

### Legacy repository layout

The previous recipe generated `http://repo.percona.com/centos/<major>/os/$basearch/` URLs. That upstream layout no longer publishes metadata for current EL8/EL9 platforms, but the `baseurl` property remains available for internal mirrors or older pinned systems.
