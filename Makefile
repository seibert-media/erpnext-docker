PATH         := /opt/docker_utils/bin:$(PATH)
SHELL        := env PATH=$(PATH) /bin/bash
REGISTRY     ?= quay.io
IMAGE        ?= seibertmedia/erpnext
VERSION      ?= latest
VERSIONS     = $(VERSION)

default: build

all: build upload clean

deps:
	go get -u github.com/bborbe/docker-utils/cmd/docker-remote-tag-exists

build:
	@tags=""; \
	for i in $(VERSIONS); do \
		tags="$$tags -t $(REGISTRY)/$(IMAGE):$$i"; \
	done; \
	echo "docker build \
	--build-arg FRAPPE_PATH=https://github.com/seibert-media/frappe.git \
	--build-arg FRAPPE_VERSION=$(VERSION) \
	--build-arg ERPNEXT_PATH=https://github.com/seibert-media/erpnext.git \
	--build-arg ERPNEXT_VERSION=$(VERSION) \
	--no-cache --rm=true $$tags ."; \
	docker build \
	--build-arg FRAPPE_PATH=https://github.com/seibert-media/frappe.git \
	--build-arg FRAPPE_VERSION=$(VERSION) \
	--build-arg ERPNEXT_PATH=https://github.com/seibert-media/erpnext.git \
	--build-arg ERPNEXT_VERSION=$(VERSION) \
	--no-cache --rm=true $$tags .

clean:
	@for i in $(VERSIONS); do \
		echo "docker rmi $(REGISTRY)/$(IMAGE):$$i"; \
		docker rmi $(REGISTRY)/$(IMAGE):$$i || true; \
	done

upload:
	@for i in $(VERSIONS); do \
		exists=`docker-remote-tag-exists \
			-registry=${REGISTRY} \
			-repository="${IMAGE}" \
			-tag="$$i" \
			-alsologtostderr \
			-v=0`; \
		if [ "$${exists}" = "false" ] || [ "$$i" = "master" ] || [ "$$i" = "test" ]; then \
			docker push $(REGISTRY)/$(IMAGE):$$i; \
		else \
			echo "$(REGISTRY)/$(IMAGE):$$i already exists => skip"; \
		fi; \
	done

versions:
	@for i in $(VERSIONS); do echo $$i; done;

open:
	open http://127.0.0.1:8080/desk

exec:
	docker exec -ti erpnext bash

logs:
	docker logs erpnext -f

run:
	docker-compose up -d
	docker-compose logs -f --tail=10 
