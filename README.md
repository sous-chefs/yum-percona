# yum-percona Cookbook

[![Cookbook Version](https://img.shields.io/cookbook/v/yum-percona.svg)](https://supermarket.chef.io/cookbooks/yum-percona)
[![CI State](https://github.com/sous-chefs/yum-percona/workflows/ci/badge.svg)](https://github.com/sous-chefs/yum-percona/actions?query=workflow%3Aci)
[![OpenCollective](https://opencollective.com/sous-chefs/backers/badge.svg)](#backers)
[![OpenCollective](https://opencollective.com/sous-chefs/sponsors/badge.svg)](#sponsors)
[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

The yum-percona cookbook takes over management of the default repositoryids used with the official Percona repositories. It allows attribute manipulation of the `percona` yum channel.

This cookbook now exposes a custom resource API. See [migration.md](migration.md) if you are migrating from the legacy recipe and attributes API.

## Maintainers

This cookbook is maintained by the Sous Chefs. The Sous Chefs are a community of Chef cookbook maintainers working together to maintain important cookbooks. If you’d like to know more please visit sous-chefs.org or come chat with us on the Chef Community Slack in #sous-chefs.

## Requirements

### Platforms

- RHEL/CentOS and derivatives

### Chef

- Chef 15.3+

### Cookbooks

- none

## Resources

### yum_percona_repo

Manages the Percona yum repository.

See [documentation/yum_percona_repo.md](documentation/yum_percona_repo.md) for the full resource documentation.

## Usage Example

Create the default `percona` repository.

```ruby
yum_percona_repo 'percona'
```

Disable the Percona repository.

```ruby
yum_percona_repo 'percona' do
  enabled false
end
```

Point the repository at an internally hosted server.

```ruby
yum_percona_repo 'percona' do
  baseurl 'https://internal.example.com/yum/release/9/RPMS/x86_64/'
  mirrorlist nil
  sslverify false
end
```

## Recipes and Attributes

This cookbook no longer ships recipes or attributes. Use the `yum_percona_repo` resource in your wrapper cookbook.

## Contributors

This project exists thanks to all the people who [contribute.](https://opencollective.com/sous-chefs/contributors.svg?width=890&button=false)

### Backers

Thank you to all our backers!

![https://opencollective.com/sous-chefs#backers](https://opencollective.com/sous-chefs/backers.svg?width=600&avatarHeight=40)

### Sponsors

Support this project by becoming a sponsor. Your logo will show up here with a link to your website.

![https://opencollective.com/sous-chefs/sponsor/0/website](https://opencollective.com/sous-chefs/sponsor/0/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/1/website](https://opencollective.com/sous-chefs/sponsor/1/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/2/website](https://opencollective.com/sous-chefs/sponsor/2/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/3/website](https://opencollective.com/sous-chefs/sponsor/3/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/4/website](https://opencollective.com/sous-chefs/sponsor/4/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/5/website](https://opencollective.com/sous-chefs/sponsor/5/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/6/website](https://opencollective.com/sous-chefs/sponsor/6/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/7/website](https://opencollective.com/sous-chefs/sponsor/7/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/8/website](https://opencollective.com/sous-chefs/sponsor/8/avatar.svg?avatarHeight=100)
![https://opencollective.com/sous-chefs/sponsor/9/website](https://opencollective.com/sous-chefs/sponsor/9/avatar.svg?avatarHeight=100)
