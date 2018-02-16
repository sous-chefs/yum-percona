# yum-percona Cookbook CHANGELOG
This file is used to list changes made in each version of the yum-percona cookbook.

## 3.0.0 (2018-02-16)

- Require Chef 12.14+ and remove the compat_resource dep
- Use SPDX compliant license string

## 2.0.1 (2016-12-22)

- Depend on the latest compat_resource cookbook
- Cookstyle fixes

## 2.0.0 (2016-11-26)
- Replace yum dependency with compat_resource
- Switch to inspec for testing

## 1.0.0 (2016-09-06)
- Avoid deprecation warnings
- Testing updates
- Add chef_version metadata
- Remove Chef 11 support

## v0.2.5 (2015-12-01)
- Fixing if/unless logic in recipe

## v0.2.4 (2015-11-30)
- Fixed attributes with with the value of false not being passed

## v0.2.3 (2015-10-28)
- Fixing Chef 13 nil property deprecation warnings

## v0.2.2 (2015-09-21)
- Added Chef standard Rubocop file and resolved all warnings
- Updated platforms in Kitchen CI config
- Add supported platforms to the metadata
- Updated Berksfile to 3.X format
- Updated and expanded development dependencies in the Gemfile
- Added contributing, testing, and maintainers docs
- Added platform requirements to the readme
- Added Travis and cookbook version badges to the readme
- Added source_url and issues_url metadata
- Update the bats test to install a package available on all RHEL releases

## v0.2.0 (2014-02-14)
- Updating test harness

## v0.1.6
Fixing README to reflect the proper yum channels

## v0.1.4
Adding CHANGELOG.md

## v0.1.0
initial release
