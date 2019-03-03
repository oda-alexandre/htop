FROM debian:stretch-slim

MAINTAINER https://oda-alexandre.com

# VARIABLES
ENV USER htop

# INSTALLATION DE L'APPLICATION
RUN apt-get update && apt-get install --no-install-recommends -y \
sudo \
htop \
xterm && \

# NETTOYAGE
apt-get --purge autoremove -y && \
apt-get autoclean -y && \
rm /etc/apt/sources.list && \
rm -rf /var/cache/apt/archives/* && \
rm -rf /var/lib/apt/lists/* && \

# AJOUT UTILISATEUR
useradd -d /home/${USER} -m ${USER} && \
passwd -d ${USER} && \
adduser ${USER} sudo

# SELECTION UTILISATEUR
USER ${USER}

# SELECTION ESPACE DE TRAVAIL
WORKDIR /home/${USER}

# COMMANDE AU DEMARRAGE DU CONTENEUR
CMD xterm htop
