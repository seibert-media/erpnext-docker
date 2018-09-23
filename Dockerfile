ARG FRAPPE_BENCH_VERSION
FROM bborbe/frappe-bench:$FRAPPE_BENCH_VERSION
MAINTAINER Benjamin Borbe <bborbe@rocketnews.de>

WORKDIR /home/frappe
RUN bench init /home/frappe/branch-repo --ignore-exist --skip-redis-config-generation --frappe-branch master

WORKDIR /home/frappe/branch-repo

RUN mkdir -p \
	sites/site1.local \
	sites/site1.local/locks \
	sites/site1.local/task-logs \
	sites/site1.local/public \
	sites/site1.local/public/files \
	sites/site1.local/private \
	sites/site1.local/private/files \
	sites/site1.local/private/backups

RUN bench get-app erpnext https://github.com/frappe/erpnext.git --branch master
RUN bench get-app banana https://github.com/bborbe/erpnext-banana-app.git --branch master

COPY Procfile Procfile
COPY common_site_config.json sites/common_site_config.json
COPY site_config.json sites/site1.local/site_config.json
RUN echo "site1.local" > sites/currentsite.txt

USER root
RUN echo "127.0.0.1 site1.local" | tee --append /etc/hosts
COPY entrypoint.sh /entrypoint.sh
USER frappe

ENTRYPOINT ["/entrypoint.sh"]
CMD ["bench","start"]
