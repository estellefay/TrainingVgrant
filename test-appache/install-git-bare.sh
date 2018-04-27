#!/bin/bash

# Create `git` user
sudo adduser --home /srv/git --disabled-password --gecos "" git

# Create `git` directories
sudo -u git mkdir /srv/git/repos/
sudo -u git mkdir /srv/git/.ssh/

# Copy ssh public keys for `git` user
cat /vagrant/ssh-keys/*.pub | sudo -u git tee /srv/git/.ssh/authorized_keys

# crée le fichier foo.git initialiser le Bare et y ajouter vagrant up 
sudo -u git mkdir /srv/git/repos/foo.git
sudo -u git init --bare --separate-git-dir=/srv/git/repos/foo.git
cp /vagrant/post-update.sh /srv/git/repos/foo.git/hooks/

# Cloner le fichier dans la local 
sudo -u git clone git@192.168.60.20:repos/foo.git-dir=home/tmp/


#Pusher du local à la machine 
sudo -u git push 


# SUprimer git
RM -RF /.git 





