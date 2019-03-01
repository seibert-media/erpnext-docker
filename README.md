# ERPNext Docker Image

This image can be used to run ERPNext in production within Docker.

## Run with docker-compose

Build or pull ERPNext image.

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
docker-compose logs -f --tail=10
```

Open in Browser

[http://127.0.0.1:8080](http://127.0.0.1:8080)

Login with Administrator and 123

## Start in developer mode

Start container in dev-mode:
```
docker-compose -f docker-compose-dev.yml up -d
docker-compose -f docker-compose-dev.yml logs -f --tail=10
```

## Customization

Best practice for adding custom apps is building an individual child image which inherits from this image.
One basic example can be found under examples/customize-image/

## Links

inspired by [https://github.com/frappe/frappe_docker](https://github.com/frappe/frappe_docker)

Docker Compose [https://docs.docker.com/compose/install/](https://docs.docker.com/compose/install/)
