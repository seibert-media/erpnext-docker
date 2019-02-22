FROM docker.seibert-media.net/seibertmedia/erpnext-base:3.0.1

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

COPY ssh /home/frappe/.ssh
RUN chmod 400 /home/frappe/.ssh/*
RUN chown -R frappe:frappe /home/frappe/.ssh/*

USER frappe
WORKDIR /home/frappe/bench-repo
COPY apps/seibertmedia /home/frappe/bench-repo/apps/seibertmedia

USER root
RUN rm -rf /home/frappe/.ssh
COPY entrypoints /entrypoints/
