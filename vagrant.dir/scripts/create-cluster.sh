#!/bin/sh

# Deploy keys to rke to connect others as vagrant
cp /tmp/id_rsa*  /home/vagrant/.ssh/
sudo chmod 400 /home/vagrant/.ssh/id_rsa*
sudo chown vagrant:vagrant /home/vagrant/.ssh/id_rsa*

#move cluster.yml
mv /tmp/cluster.yml*  /home/vagrant/
chown vagrant:vagrant /home/vagrant/cluster.yml*

# Deploy keys to rke to connect others as root for initial deployment
mkdir /root/.ssh
chmod 700 /root/.ssh/
chown root:root /root/.ssh
cp /tmp/id_rsa*  /root/.ssh/id_rsa
sudo chmod 400 /root/.ssh/id_rsa*
sudo chown root:root /root/.ssh/id_rsa*

rm /tmp/id_rsa*

##start the cluster
#rke up

##make kubectl available from the start
mkdir /home/vagrant/.kube
chown vagrant:vagrant /home/vagrant/.kube
#mv kube_config_cluster.yml /home/vagrant/.kube/config
#chown vagrant:vagrant /home/vagrant/.kube/config
