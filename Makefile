
default: build

all: build upload

build:
	docker build -t bborbe/erpnext:latest .

upload:
	docker push bborbe/erpnext:latest
