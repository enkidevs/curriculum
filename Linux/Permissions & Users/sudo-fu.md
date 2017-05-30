# Sudo-fu
author: Arseny

levels:

  - basic

  - advanced

  - medium

type: tetris

category: tip

---
## Content

Does the command need to be run under root user, or can the command be run with regular user permissions?

Assume all default or conventional unix directories have default set of permissions.

---
## Game Content

sudo:no sudo
```true
ls /usr
```
```false
touch /usr/bin/script
```
```true
touch ~/script
```
```false
pip install ansible
```
```true
pip install --user ansible
```
```false
rm -rf /usr/bin/*
```
```false
rm -rf /usr/local/bin/*
```
```false
ifconfig en0 ether 72:00:02:9b:c3:f0
```
```true
ifconfig en0
```
```false
shutdown -r now
```
```false
locale-gen
```
```false
dpkg-reconfigure tzdata
```
```false
cd /root
```
```false
service cron restart
```
```false
chown mrrobot ~/my_file
```
```false
adduser mrrobot
```
```true
whoami
```
```true
ls ~/
```
```true
passwd
```
```false
passwd someguy
```
```true
w
```
```true
uptime
```
```true
users
```
```true
hostname
```