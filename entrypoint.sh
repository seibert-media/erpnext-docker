#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o errtrace

if [ "$1" = 'bench' ] && [ "$2" = 'start' ]; then
	echo "setup $@"

	echo "set ADMIN_PASSWORD to ***"
	sed -i "s/{{ADMIN_PASSWORD}}/${ADMIN_PASSWORD}/" sites/common_site_config.json
	bench set-admin-password "${ADMIN_PASSWORD}"

	echo "set DB_HOST to ${DB_HOST}"
	sed -i "s/{{DB_HOST}}/${DB_HOST}/" sites/common_site_config.json
	bench set-mariadb-host "${DB_HOST}"

	echo "set DB_NAME to ${DB_NAME}"
	sed -i "s/{{DB_NAME}}/${DB_NAME}/" sites/site1.local/site_config.json

	echo "set DB_PASSWORD to ***"
	sed -i "s/{{DB_PASSWORD}}/${DB_PASSWORD}/" sites/site1.local/site_config.json

	echo "install apps ..."
	bench --site site1.local install-app erpnext || true
	bench --site site1.local install-app banana  || true

	echo "run bench start"
fi

exec "$@"
