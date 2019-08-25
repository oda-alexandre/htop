# HTOP

<img src="https://hisham.hm/htop/htop-logo.png" width="200" height="200"/>

## INDEX

- [Badges](#BADGES)
- [Introduction](#INTRODUCTION)
- [Prerequisites](#PREREQUISITESITES)
- [Install](#INSTALL)
- [License](#LICENSE)

## BADGES

[![pipeline status](https://gitlab.com/oda-alexandre/htop/badges/master/pipeline.svg)](https://gitlab.com/oda-alexandre/htop/commits/master)

## INTRODUCTION

Docker image of :

- [htop](https://hisham.hm/htop)

Continuous integration on :

- [gitlab](https://gitlab.com/oda-alexandre/htop/pipelines)

Automatically updated on :

- [docker hub public](https://hub.docker.com/r/alexandreoda/htop)

## PREREQUISITES

Use [docker](https://www.docker.com)

## INSTALL

```docker run -d --name htop -v ${HOME}:/home/htop -v /tmp/.X11-unix/:/tmp/.X11-unix/ --pid host -e DISPLAY alexandreoda/htop```

## LICENSE

[![GPLv3+](http://gplv3.fsf.org/gplv3-127x51.png)](https://gitlab.com/oda-alexandre/htop/blob/master/LICENSE)
