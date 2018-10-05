REGISTRY ?= docker.seibert-media.net
IMAGE    ?= seibertmedia/erpnext
VERSION  ?= latest
VERSIONS = $(VERSION)

VERSIONS += $(shell git fetch --tags; git tag -l --points-at HEAD)

default: build

all: build upload clean

build:
	@tags=""; \
	for i in $(VERSIONS); do \
		tags="$$tags -t $(REGISTRY)/$(IMAGE):$$i"; \
	done; \
	echo "docker build --no-cache --rm=true $$tags ."
	docker build --no-cache --rm=true $$tags .

clean:
	@for i in $(VERSIONS); do \
		echo "docker rmi $(REGISTRY)/$(IMAGE):$$i"; \
		docker rmi $(REGISTRY)/$(IMAGE):$$i || true; \
	done

upload:
	@for i in $(VERSIONS); do \
		echo "docker push $(REGISTRY)/$(IMAGE):$$i"; \
		docker push $(REGISTRY)/$(IMAGE):$$i; \
	done

versions:
	@for i in $(VERSIONS); do echo $$i; done;

open:
	open http://127.0.0.1:8000

exec:
	docker exec -ti erpnext bash

rootexec:
	docker exec -ti --user 0 erpnext bash
