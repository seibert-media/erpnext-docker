FROM docker.seibert-media.net/seibertmedia/erpnext-base:3.1.0

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

USER root
COPY apps/seibertmedia /home/frappe/bench-repo/apps/seibertmedia
COPY entrypoints /entrypoints/
RUN chown -R frappe:frappe /home/frappe/bench-repo/apps/seibertmedia
WORKDIR /home/frappe/bench-repo
