# Release History

### 0.5.1 / 2021-03-31

#### Documentation

* Correct the default encryption type documented in restore_database

### 0.5.0 / 2021-03-08

#### Features

* Drop support for Ruby 2.4 and add support for Ruby 3.0

### 0.4.0 / 2021-02-23

#### Features

* Add CMEK fields to backup and database

### 0.3.0 / 2021-02-02

#### Features

* Support point-in-time-recovery fields
* Use self-signed JWT credentials when possible

### 0.2.1 / 2021-01-20

#### Documentation

* Timeout config description correctly gives the units as seconds.

### 0.2.0 / 2020-12-02

#### Features

* Add throttled field to database DDL metadata

### 0.1.3 / 2020-08-10

#### Bug Fixes

* Allow special symbolic credentials in client configs

### 0.1.2 / 2020-08-06

#### Bug Fixes

* Fix retry logic by checking the correct numeric error codes

### 0.1.1 / 2020-07-23

#### Bug Fixes

* Make the spanner env prefixes consistent
* Allow retries of UpdateBackup

### 0.1.0 / 2020-07-06

Initial release.
