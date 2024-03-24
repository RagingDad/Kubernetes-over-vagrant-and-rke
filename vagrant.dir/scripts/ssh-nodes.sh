#!/bin/sh

# Deploy keys to kubernetes-nodes to enable connection from rke as root
mkdir /root/.ssh
chmod 700 /root/.ssh/
chown root:root /root/.ssh
cat /tmp/id_rsa.pub >> /root/.ssh/authorized_keys
chmod 400 /root/.ssh/authorized_keys
chown root:root /root/.ssh/authorized_keys
