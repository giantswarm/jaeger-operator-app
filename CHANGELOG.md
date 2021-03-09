# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project's packages adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## [Unreleased]

## [0.2.3] - 2021-02-26

### Updated

- Sync with upstream chart version --> 2.19.1

### Changed

- Collector service now supports configuration of distributed deployments

## [0.2.2] - 2021-01-20

### Updated

- chart version 1.18.0 -> 1.21.2
- jaeger-all-in-one 1.18.0 -> 1.21.0

### Added

- patch and sync script
- initial patch

### Fixed

- Fixed a wrong URL to the values.yaml file in the README.

### Added

- Added a values.schema.json file to help with validating user values.

## [0.2.1] - 2020-10-13

### Added

- Service Monitor

## [0.2.0] - 2020-09-01

### Added

- Upgrade upstream jaeger-operator from v1.17.0 to v1.18.0

## [0.1.2] - 2020-04-24

### Added

- update source to include ref to README.md

## [0.1.1] - 2020-04-24

### Added

- Initial release of jaeger-operator-app chart based on official jaeger-operator chart.

[Unreleased]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.2.3...HEAD
[0.2.3]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.2.2...v0.2.3
[0.2.2]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.2.1...v0.2.2
[0.2.1]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.2.0...v0.2.1
[0.2.0]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.1.2...v0.2.0
[0.1.2]: https://github.com/giantswarm/jaeger-operator-app/compare/v0.1.1..v0.1.2
[0.1.1]: https://github.com/giantswarm/jaeger-operator-app/releases/tag/v0.1.1
