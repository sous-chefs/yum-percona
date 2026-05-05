# Migration Guide

## Breaking Change

`yum-percona` no longer provides recipes or node attributes. The legacy `yum-percona::default` recipe and `node['yum']['percona']` attributes have been replaced by the `yum_percona_repo` custom resource.

## Before

```ruby
node.default['yum']['percona']['enabled'] = true
node.default['yum']['percona']['baseurl'] = 'https://internal.example.com/centos/9/os/x86_64/'

include_recipe 'yum-percona'
```

## After

```ruby
yum_percona_repo 'percona' do
  enabled true
  baseurl 'https://internal.example.com/yum/release/9/RPMS/x86_64/'
end
```

## Property Mapping

| Legacy attribute                         | Resource property |
|------------------------------------------|-------------------|
| `node['yum']['percona']['description']`  | `description`     |
| `node['yum']['percona']['baseurl']`      | `baseurl`         |
| `node['yum']['percona']['mirrorlist']`   | `mirrorlist`      |
| `node['yum']['percona']['gpgkey']`       | `gpgkey`          |
| `node['yum']['percona']['gpgcheck']`     | `gpgcheck`        |
| `node['yum']['percona']['enabled']`      | `enabled`         |
| `node['yum']['percona']['cost']`         | `cost`            |
| `node['yum']['percona']['exclude']`      | `exclude`         |
| `node['yum']['percona']['enablegroups']` | `enablegroups`    |
| `node['yum']['percona']['priority']`     | `priority`        |
| `node['yum']['percona']['proxy']`        | `proxy`           |
| `node['yum']['percona']['sslverify']`    | `sslverify`       |
| `node['yum']['percona']['timeout']`      | `timeout`         |

All other legacy pass-through attributes from the old recipe are also available as resource properties with the same names.

## Repository URL Change

The legacy default URL pattern `http://repo.percona.com/centos/<major>/os/$basearch/` is no longer supportable on current EL8/EL9 platforms because Percona no longer publishes metadata at those paths. The resource now defaults to the current direct release repository layout:

```text
https://repo.percona.com/yum/release/<major>/RPMS/$basearch/
```

Set `baseurl` explicitly if you need an internal mirror or a pinned legacy repository.

## Test Cookbook Example

The default Kitchen suite now uses `test/cookbooks/test/recipes/default.rb`:

```ruby
yum_percona_repo 'percona'
```
