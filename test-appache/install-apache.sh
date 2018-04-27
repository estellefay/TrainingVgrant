#!/bin/bash

sudo apt-get install -y apache2
sudo apt-get update 

sudo rm -r /var/www/html # Je supprime html pour pouvoir par la suite crée le lien symbolique 
sudo ln -s /vagrant/web/ /var/www/html # je crée le lien symbolique entre se qu'il y as dans mon fichier web et le le cole a l'intérieur de ma box dans le fichier html 