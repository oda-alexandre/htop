# HTOP

![htop](https://raw.githubusercontent.com/oda-alexandre/htop/master/img/logo-htop.png) ![docker](https://raw.githubusercontent.com/oda-alexandre/htop/master/img/logo-docker.png)


## INDEX

- [Build Docker](#BUILD)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BUILD DOCKER

[![htop docker build](https://img.shields.io/docker/build/alexandreoda/htop.svg)](https://hub.docker.com/r/alexandreoda/htop)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de [htop](https://hisham.hm/htop) pour [docker](https://www.docker.com), mis à jour automatiquement dans le [docker hub](https://hub.docker.com/r/alexandreoda/htop/) public.


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name htop -v ${HOME}:/home/htop -v /tmp/.X11-unix/:/tmp/.X11-unix/ --pid host -e DISPLAY alexandreoda/htop
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/htop/blob/master/LICENSE)
