all:
	build upload

build:
	docker build --build-arg FRAPPE_BENCH_VERSION=master -t bborbe/frappe-erpnext:master .

upload:
	docker push bborbe/frappe-erpnext:master
