# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added
- support for Rails 7.2

### Changed

- CI: Use bundler 2.4
- CI: Use Ruby 3.0 for rubocop
- drop support for ruby < 3.0

## [0.7.0] - 2023-10-29

### Added

- support for Rails 7.1
- extend test matrix with ruby 3.2

### Changed

- set supported ruby versions to >= 2.7.0 (required for rubocop, anyway legacy)
- set supported rails versions to >= 6.1.0

### Removed

- support for Rails < 6.1
- support for Ruby < 2.7

## [0.6.0] - 2020-12-21

### Added

- support for Rails 7.0

### Changed

- set supported ruby versions to >= 2.5.0 (required for rubocop, anyway legacy)
- set supported rails versions to >= 5.0.0

## [0.5.0] - 2020-12-12

### Added

- support for Rails 6.1

## [0.4.1] - 2019-11-06

### Changed

- set supported ruby versions to >= 2.4.0

### Fixed

- support for Rails 6.0.X

## [0.4.0] - 2019-08-22

### Added

- support for Rails 6.0

### Removed

- support for Rails 4.0 and 4.1

## [0.3.1] - 2016-09-26

### Fixed

- prevent menu items from being highlighted which have the same last path element as other menu items

## [0.3.0] - 2016-07-07

### Changed

- rails 5.0 support

## [0.2.0] - 2015-04-20

### Changed

- renamed namespace from Rails::Menu::Manager to RailsMenuManager

## [0.1.0] - 2015-04-20
