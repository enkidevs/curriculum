---
author: Arseny
type: tetris
category: tip
---

# Sudo-fu


---

## Content

Does the command need to be run under root user, or can the command be run with regular user permissions?

Assume all default or conventional unix directories have default set of permissions.


---

## Game Content

sudo:no sudo

```true

ls /usr
%exp
This command lists existing files in /usr directory. It doesn't require `sudo`.
%

touch ~/script
%exp
`touch` command enables users create new files and change timestaps(Date, Hour, etc.) for existing files. `sudo` is not required for this actions.
%

pip install --user ansible
%exp
It's a package manager for programs written in Python. Installing modules and packages using it wouldn't require `sudo` permissions.
%

ifconfig en0
%exp
`ifconfig` is a command used for displaying network interface configurations. It doesn't require `sudo`.
%

whoami
%exp
`whoami` prints the effective user ID currently logged in. `sudo` isn't required for this action.
%

ls ~/
%exp
This command lists all files in the root directory. You don't need `sudo` to use this command.
%

passwd
%exp
`passwd` enables users to change their password. `sudo` isn't required for it.
%

w
%exp
`w` command lists all logged on and what they are working on, `sudo` isn't required here.
%

uptime
%exp
`uptime` tells you how long the system has been running, you can use this command without `sudo` being required.
%

hostname
%exp
Alternatively referred to as a computer name or sitename, a hostname is the name of the computer you're currently logged into or visiting. You can get all these information without the need of `sudo`.
%

shutdown -r now
%exp
Shutdown sets a time when the pc should be shut down. It is specified that the computer should be shutdown immediately. The latest versions of unix like OSs don't require sudo for this action anymore.
%

```

```false
passwd someguy
%exp
This command enables the logged on user to change others users passwords. Only sudoers can do it.
%

touch /usr/bin/script
%exp
The command creats a new file named script in the /usr/bin directory. In order to be able to do this you must be logged in as sudoer.
%

service cron restart
%exp
Cron is responsible for all scheduled commands or scripts. It wakes up every minute and checks whether the command should be run in the next minute. You need to have `sudo` permissions in order to retart cron.
%

adduser mrrobot
%exp
Only sudoers may add a user or a group to the system.
%

cd /root
%exp
Permission to navigate to root directory is denied to all users except the root user.
%

chown mrrobot ~/my_file
%exp
`chown` changes the user and/or group ownership of each given file. This command gives mrrobot ownership to my_file. You need `sudo` permissions for this action.
%

dpkg-reconfigure tzdata
%exp
`dpkg-reconfigure` command is used to reconfigure an entire installation. This command requires `sudo` permissions.
%

locale-gen
%exp
The output for this commad is formed of a set of shell variables and their values. All of them with regards to the language the user chose for the system. `sudo` is required to be able to use this command.
%

ifconfig en0 ether 72:00:02:9b:c3:f0
%exp
This command enables users to change their system's ethernet MAC address. Only the root user is allowed to use this command.
%

rm -rf /usr/local/bin/*
%exp
In order to remove everything from /usr/local/bin directory you need to have sudo access.
%

rm -rf /usr/bin/*
%exp
In order to remove everything from /usr/bin directory you need to have sudo access.
%

```
