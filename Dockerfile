FROM docker.seibert-media.net/seibertmedia/erpnext-base:3.0.0

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

ARG SEIBERTMEDIA_APP_VERSION=1.3.10

COPY ssh /home/frappe/.ssh
RUN chmod 400 /home/frappe/.ssh/*
RUN chown -R frappe:frappe /home/frappe/.ssh/*

USER frappe
WORKDIR /home/frappe/bench-repo
RUN bench get-app seibertmedia ssh://git@bitbucket.org:22/seibertmedia-alle/seibertmedia-app.git --branch ${SEIBERTMEDIA_APP_VERSION}
# TODO: remove banana app
RUN bench get-app banana https://github.com/bborbe/erpnext-banana-app.git --branch master

USER root
RUN rm -rf /home/frappe/.ssh
COPY entrypoints /entrypoints/
