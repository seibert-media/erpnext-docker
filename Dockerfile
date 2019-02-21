FROM docker.seibert-media.net/seibertmedia/erpnext-base:3.0.1

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

ARG SEIBERTMEDIA_APP_VERSION=1.5.1

COPY ssh /home/frappe/.ssh
RUN chmod 400 /home/frappe/.ssh/*
RUN chown -R frappe:frappe /home/frappe/.ssh/*

USER frappe
WORKDIR /home/frappe/bench-repo
RUN bench get-app seibertmedia ssh://git@bitbucket.org:22/seibertmedia-alle/seibertmedia-app.git --branch ${SEIBERTMEDIA_APP_VERSION}
USER root
RUN rm -rf /home/frappe/.ssh
COPY entrypoints /entrypoints/
