#!/bin/bash

echo "ajout de la clé de dépot"
wget -O- http://ubuntu.spiritofborepaire.fr/depot.gpg.key | sudo apt-key add -

#ajout du repo s'il n'existe pas
if ! grep -q "deb http://ubuntu.spiritofborepaire.fr/ stable main" /etc/apt/sources.list; then
	echo "deb http://ubuntu.spiritofborepaire.fr/ stable main" >> /etc/apt/sources.list
	echo "ajout du dépot"
fi

#mise à jour des packets
apt-get update

#installation de l'application
apt-get install krack