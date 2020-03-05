# HTOP

![logo](https://assets.gitlab-static.net/uploads/-/system/project/avatar/12904452/htop.png)

## INDEX

- [HTOP](#htop)
  - [INDEX](#index)
  - [BADGES](#badges)
  - [INTRODUCTION](#introduction)
  - [PREREQUISITES](#prerequisites)
  - [INSTALL](#install)
    - [DOCKER RUN](#docker-run)
    - [DOCKER COMPOSE](#docker-compose)
  - [LICENSE](#license)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/htop/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/htop/commits/master)

## INTRODUCTION

Docker image of :

- [htop](https://hisham.hm/htop)

Continuous integration on :

- [gitlab pipelines](https://gitlab.com/oda-alexandre/htop/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/htop)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

### DOCKER RUN

```\
docker run -d \
--name htop \
--pid host \
-e DISPLAY \
-v ${HOME}:/home/htop \
-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
alexandreoda/htop
```

### DOCKER COMPOSE

```yml
version: "3.7"

services:
  htop:
    container_name: htop
    image: alexandreoda/htop
    restart: no
    network_mode: none
    pid: host
    privileged: false
    environment:
      - DISPLAY
    volumes:
      - "${HOME}:/home/htop"
      - "/tmp/.X11-unix/:/tmp/.X11-unix/"
```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/htop/blob/master/LICENSE)
