FROM ubuntu:18.04

LABEL maintainer="//SEIBERT/MEDIA GmbH  <docker@seibert-media.net>"


ARG FRAPPE_VERSION=v10.1.59
ARG ERPNEXT_VERSION=v10.1.69
ARG BENCH_VERSION=master
ARG SEIBERTMEDIA_APP_VERSION=1.1.0

RUN set -x \
	&& DEBIAN_FRONTEND=noninteractive apt-get update --quiet \
	&& DEBIAN_FRONTEND=noninteractive apt-get upgrade --quiet --yes \
	&& DEBIAN_FRONTEND=noninteractive apt-get install --quiet --yes --no-install-recommends \
	apt-transport-https \
	build-essential \
	ca-certificates \
	cron \
	curl \
	fontconfig \
	git \
	gpg-agent \
	iputils-ping \
	language-pack-en \
	libffi-dev \
	libfreetype6-dev \
	libjpeg8-dev \
	liblcms2-dev \
	libldap2-dev \
	libmysqlclient-dev \
	libsasl2-dev \
	libssl1.0-dev \
	libtiff5-dev \
	libwebp-dev \
	libxext6 \
	libxrender1 \
	locales \
	mariadb-client \
	mariadb-common \
	nodejs \
	npm \
	python-dev \
	python-pip \
	python-setuptools \
	python-tk \
	python-wheel \
	redis-tools \
	rlwrap \
	software-properties-common \
	ssh \
	tcl8.6-dev \
	tk8.6-dev \
	wkhtmltopdf \
	xfonts-75dpi \
	xfonts-base \
	zlib1g-dev \
	supervisor \
	nginx \
	&& DEBIAN_FRONTEND=noninteractive apt-get autoremove --yes \
	&& DEBIAN_FRONTEND=noninteractive apt-get clean

ENV PYTHONIOENCODING=utf-8
ENV LANGUAGE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
RUN locale-gen en_US.UTF-8

RUN groupadd -g 1000 frappe
RUN useradd -ms /bin/bash -u 1000 -g 1000 frappe

RUN curl --connect-timeout 10 --max-time 120 -sSL https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.bionic_amd64.deb > wkhtmltopdf.deb \
	&& dpkg -i wkhtmltopdf.deb \
	&& rm wkhtmltopdf.deb

RUN npm install -g yarn

WORKDIR /home/frappe
RUN git clone -b ${BENCH_VERSION} https://github.com/frappe/bench.git bench-repo
RUN pip install -e bench-repo
COPY ssh /home/frappe/.ssh
RUN chmod 400 /home/frappe/.ssh/*
RUN chown -R frappe:frappe /home/frappe

USER frappe
RUN bench init /home/frappe/bench-repo --ignore-exist --skip-redis-config-generation --frappe-branch ${FRAPPE_VERSION}
RUN /home/frappe/bench-repo/env/bin/pip install html5lib

WORKDIR /home/frappe/bench-repo
RUN bench get-app erpnext https://github.com/frappe/erpnext.git --branch ${ERPNEXT_VERSION}
RUN bench get-app seibertmedia ssh://git@bitbucket.org:22/seibertmedia-alle/seibertmedia-app.git --branch ${SEIBERTMEDIA_APP_VERSION}

# TODO: remove banana app
RUN bench get-app banana https://github.com/bborbe/erpnext-banana-app.git --branch master

USER root
RUN rm -rf /home/frappe/.ssh
RUN mkdir -p /var/log/supervisor
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY nginx.conf /etc/nginx/sites-available/default
COPY bench-repo .

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/bin/supervisord"]
