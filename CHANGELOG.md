# Changelog

All notable changes to vhdldep will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/), and vhdldep adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## Unreleased

The changes not yet present in any release are listed in this section.

### Added

* Support for [GitPack](https://github.com/dominiksalvet/gitpack).

## 2.0.0 (2019-06-03)

### Added

* Argument parsing is done using `getopts`.
* Support for multiple VHDL statements at a single line.

### Changed

* Commands `-help`, `-about` have been renamed to `help`, `about`.
* Option `-object-dir=DIR` has been changed to `-p PATH` to be more POSIX-friendly.
* Vhdldep now keeps the original letter case.
* All input file paths can be arbitrary.

## 1.1.0 (2019-05-31)

### Added

* Installation and uninstallation using delivered *Makefile*.

### Changed

* This project licensing policy is compliant with [REUSE Practices](https://reuse.software/practices/2.0/).
* The project has been renamed from `vhdl-makedepend` to `vhdldep`.
* Vhdldep is now [gim](https://github.com/dominiksalvet/gim) ready.
* Move from GitLab to GitHub.

## 1.0.0 (2018-05-31)

### Added

* Display dependencies of multiple VHLD files.
* Support for setting up the object directory path.
