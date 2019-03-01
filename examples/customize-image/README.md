# Customize ERPNext Docker Image with sample apps

With the help of apps further functions can be integrated into ERPNext.

## Installation

The example [ERPNext Banana App](https://github.com/bborbe/erpnext-banana-app), contains a self-written script,
which displays exemplary messages when reloading a page or creating an object under the Doctype _Customer_.

## Create custom apps

As well as the _Banana App_ you can store your own apps in the folder `apps`.
Therefore the `Dockerfile` has to be extended by the added apps to copy and install all apps into the ERPNext repo.
For each app a script has to be created in the `entrypoints` foder, so that each one can be installed individually while ERPNext is starting.
The scripts can be created in order and provided with the name of the respective app. For example `32_install_app.sh`.

## Usage

Create image from Dockerfile

```
docker build --no-cache --rm=true -t erpnext:customized .
```

Start container

```
docker-compose up --force-recreate -d
docker-compose logs -f --tail=10
```

Open ERPNext [http://127.0.0.1:8080](http://127.0.0.1:8080)
and login with username `Administrator` and password `123`
```
open http://127.0.0.1:8080
```

Start container in dev-mode

```
docker-compose -f docker-compose-dev.yml up -d
docker-compose -f docker-compose-dev.yml logs -f --tail=10 
```

Show logs

```
docker logs erpnext -f
```

Execute a command in container

```
docker exec -ti erpnext bash
```
