# ERPNext Base Docker Image

This image can be used as base docker image for ERPNext. 

## Local

build or pull erpnext image

Pull:

```bash
docker-compose pull
```

Build:

```bash
docker-compose build
```

Start:
```bash
docker-compose up --force-recreate -d
```

Open in Browser

[http://127.0.0.1:8080](http://127.0.0.1:8080)

Login with Administrator and 123

## Dev

Clone seibertmedia app into docker directory:
```
mkdir apps
cd apps
git clone git@bitbucket.org:seibertmedia-alle/seibertmedia-app.git
mv seibertmedia-app seibertmedia
```

Start container in dev-mode:
```
make dev
```

## Links

inspired by [https://github.com/frappe/frappe_docker](https://github.com/frappe/frappe_docker)

Docker Compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)
