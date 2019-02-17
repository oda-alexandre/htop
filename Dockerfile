FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.github.io

# INSTALLATION DE L'APPLICATION
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
htop \
xterm

# NETTOYAGE
RUN apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/*

# AJOUT DE L(UTILISATEUR
RUN useradd -d /home/htop -m htop && \
passwd -d htop && \
adduser htop sudo

# SELECTION DE L'UTILISATEUR
USER htop

# SELECTION DE L'ESPACE DE TRAVAIL
WORKDIR /home/htop

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD xterm htop
