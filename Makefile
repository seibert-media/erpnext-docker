REGISTRY ?= docker.seibert-media.net
IMAGE    ?= seibertmedia/erpnext
VERSION  ?= latest

default: build

all: build upload clean

build:
	docker build --no-cache --rm=true -t $(REGISTRY)/$(IMAGE):$(VERSION) .

upload:
	docker push $(REGISTRY)/$(IMAGE):$(VERSION)

clean:
	docker rmi $(REGISTRY)/$(IMAGE):$(VERSION) || true

