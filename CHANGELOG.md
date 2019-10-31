# Changelog

All notable changes to this project will be documented in this file.

Please choose versions by [Semantic Versioning](http://semver.org/).

* MAJOR version when you make incompatible API changes,
* MINOR version when you add functionality in a backwards-compatible manner, and
* PATCH version when you make backwards-compatible bug fixes.

## 3.5.1

- Update Frappe to v12.0.17
- Update Erpnext to v12.1.7

## 3.5.0

- Update Frappe to v12.0.16
- Update Erpnext to v12.1.6

## 3.4.2

- Remove quotes from max_file_size 

## 3.4.1

- Fix max_file_size 

## 3.4.0

- Allow configure max_file_size

## 3.3.2

- Update Frappe to v11.1.41

## 3.3.1

- Update Frappe to (hotfix)

## 3.3.0

- Update Frappe to v11.1.39
- Update Erpnext to v11.1.44

## 3.2.2

- Update sql dump

## 3.2.1

- Change restart_supervisor_on_update to true

## 3.2.0

- Update Frappe to v11.1.13
- Update Erpnext to v11.1.13

## 3.1.0

- Update Frappe to v10.1.71
- Update Erpnext to v10.1.81

## 3.0.2

- Fix developer mode

## 3.0.1

- Remove redundant uninstall-app step, Refactor log

## 3.0.0

- Remove custom apps from base image  

## 2.11.0

- Updated Seibert-Media App to 1.3.6 fix BRO-1147 

## 2.10.0

- Change uid from 1000 to 500

## 2.9.0

- Updated Seibert-Media App to 1.3.5

## 2.8.0

- Update Seibert-Medai App to 1.3.4 Pixelletter improvment
- Changed from Gunicorn to uwsgi

## 2.7.0

- Fix log permissions
- Update Seibert-Media App to 1.3.3 intro and outro text

## 2.6.0

- Update Seibert-Media App to 1.3.0 for Pixelletter

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
