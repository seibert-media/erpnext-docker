all:
	build upload

build:
	docker build -t bborbe/erpnext:master .

upload:
	docker push bborbe/erpnext:master
