# HTOP

[![dockeri.co](https://dockeri.co/image/alexandreoda/htop)](https://hub.docker.com/r/alexandreoda/htop)


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![version](https://images.microbadger.com/badges/version/alexandreoda/htop.svg)](https://microbadger.com/images/alexandreoda/htop)
[![size](https://images.microbadger.com/badges/image/alexandreoda/htop.svg)](https://microbadger.com/images/alexandreoda/htop")
[![build](https://img.shields.io/docker/build/alexandreoda/htop.svg)](https://hub.docker.com/r/alexandreoda/htop)
[![automated](https://img.shields.io/docker/automated/alexandreoda/htop.svg)](https://hub.docker.com/r/alexandreoda/htop)


## INTRODUCTION

Ce repository contient le fichier Dockerfile de

- [htop](https://hisham.hm/htop)

Mis à jour automatiquement dans le [docker hub public](https://hub.docker.com/r/alexandreoda/htop).


## PREREQUIS

Installer [docker](https://www.docker.com)


## INSTALLATION

```
docker run -d --name htop -v ${HOME}:/home/htop -v /tmp/.X11-unix/:/tmp/.X11-unix/ --pid host -e DISPLAY alexandreoda/htop
```


## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://github.com/oda-alexandre/htop/blob/master/LICENSE)
