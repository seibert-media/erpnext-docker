FROM docker.seibert-media.net/seibertmedia/erpnext-base:3.1.0

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

USER root
COPY apps/banana /home/frappe/bench-repo/apps/banana
COPY entrypoints /entrypoints/
RUN chown -R frappe:frappe /home/frappe/bench-repo/apps/banana
WORKDIR /home/frappe/bench-repo
