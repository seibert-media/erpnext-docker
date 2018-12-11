#!/usr/bin/env bash

echo "install seibertmedia app ..."
bench get-app seibertmedia ssh://git@bitbucket.org:22/seibertmedia-alle/seibertmedia-app.git --branch ${SEIBERTMEDIA_APP_VERSION}
bench --site site1.local install-app seibertmedia  || true