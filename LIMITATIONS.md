# Limitations

## Package Availability

### DNF/YUM (RHEL family)

Percona publishes RPM repositories through `https://repo.percona.com/yum/` and documents RPM installation through the `percona-release` package. This cookbook manages a direct `percona` yum repository and does not install or run `percona-release`.

Percona's current lifecycle lists active RPM package support for:

* Amazon Linux 2023
* RHEL 8, 9, and 10
* RHEL-compatible derivatives aligned to the RHEL lifecycle, including AlmaLinux, Oracle Linux, and Rocky Linux

The current direct release repository metadata is available with this pattern:

```text
https://repo.percona.com/yum/release/<major>/RPMS/$basearch/
```

For Amazon Linux 2023, this cookbook uses the EL9 release repository path.

The legacy cookbook generated repository URLs with this now-stale pattern:

```text
http://repo.percona.com/centos/<major>/os/$basearch/
```

Phase 1 Kitchen verification showed that `http://repo.percona.com/centos/9/os/$basearch/` returns missing repository metadata on current EL9 platforms. Users who still need the old layout, or an internal mirror based on it, can set the `baseurl` resource property explicitly.

### APT (Debian/Ubuntu)

Percona provides APT repositories for Debian and Ubuntu, but this cookbook is only a YUM/DNF repository wrapper. Use Percona's APT repository tooling or an apt-specific cookbook for Debian-family systems.

### Zypper (SUSE)

This cookbook does not manage SUSE/Zypper repositories.

## Architecture Limitations

Percona's lifecycle overview states AMD64 and ARM64 package support for active Percona Server for MySQL 8.0 and 8.4 packages on current listed platforms. Older product series may have narrower architecture support.

## Source/Compiled Installation

This cookbook only creates or removes a yum repository file. It does not install Percona products from packages and does not support source builds.

## Known Issues

* Fedora and Scientific Linux support were removed because they are not listed in the current Percona RPM lifecycle data for Percona MySQL repositories, and Scientific Linux is end-of-life.
* CentOS 7 and CentOS Stream 8 were removed because they are end-of-life. CentOS Stream 9 remains in the Kitchen matrix as the current CentOS-family test target.
* Percona documents `percona-release` as the preferred modern repository setup tool. This cookbook preserves direct `yum_repository` management for existing users migrating from attributes and recipes.

## Sources

* https://www.percona.com/release-lifecycle-overview/
* https://docs.percona.com/percona-software-repositories/installing.html
* https://docs.percona.com/percona-server/8.0/yum-repo.html
