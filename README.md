# HTOP

<img src="https://hisham.hm/htop/htop-logo.png" />


## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequis](#PREREQUIS)
- [Installation](#INSTALLATION)
- [License](#LICENSE)


## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/htop/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/htop/commits/master)


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
