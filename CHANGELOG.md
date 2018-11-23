# Changelog

All notable changes to this project will be documented in this file.

Please choose versions by [Semantic Versioning](http://semver.org/).

* MAJOR version when you make incompatible API changes,
* MINOR version when you add functionality in a backwards-compatible manner, and
* PATCH version when you make backwards-compatible bug fixes.

## 2.5.1

- Update frappe to v10.1.64 
- Update erpnext to v10.1.72
- Set net.core.somaxconn for docker-compose

## 2.5.0

- Add Docker-Compose file for development
- Run entrypoint for every command  

## 2.4.2

- Fix docker exists check

## 2.4.1

- Update frappe to v10.1.59 
- Update erpnext to v10.1.69

## 2.4.0

- Allow configure encryption key for mail.

## 2.3.0

- Remove Backup

## 2.2.0

- Update Seibert-Media App to 1.1.0

## 2.1.2

- fix pdf generation

## 2.1.1

- add nginx headers

## 2.1.0

- remove set of some proxy header
- move chown to entrypoint

## 2.0.0

- use supervisord to start nginx and gunicron

## 1.1.0

- add seibertmedia app 
- use tags for erpnext and frappe

## 1.0.1

- change wkhtmltopdf to allow run without X 

## 1.0.0

- Initial Version
