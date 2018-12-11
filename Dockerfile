FROM docker.seibert-media.net/seibertmedia/erpnext-base:latest

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"

ARG SEIBERTMEDIA_APP_VERSION=1.3.6

COPY sh /sh/

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/supervisord"]
