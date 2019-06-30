FROM debian:stretch-slim

MAINTAINER https://www.oda-alexandre.com/

ENV USER htop

RUN echo -e '\033[36;1m ******* INSTALL APP ******** \033[0m' && \
apt-get update && apt-get install --no-install-recommends -y \
sudo \
htop \
xterm

RUN echo -e '\033[36;1m ******* CLEANING ******** \033[0m' && \
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

RUN echo -e '\033[36;1m ******* ADD USER ******** \033[0m' && \
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

RUN echo -e '\033[36;1m ******* SELECT USER ******** \033[0m'
USER ${USER}

RUN echo -e '\033[36;1m ******* SELECT WORKING SPACE ******** \033[0m'
WORKDIR /home/${USER}

RUN echo -e '\033[36;1m ******* CONTAINER START COMMAND ******** \033[0m'
CMD xterm htop \
