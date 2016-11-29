# Linux User management 

author: tuwi.dc

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

tags:

  - linux

  - terminal

  - user

  - userdel

  - delete

  - add

  - useradd

  - bash

  - chfn

---
## Content

To list all users you can use:

```
$ cut -d: -f1 /etc/passwd
```

For the following commands you have to be logged as `root`.

To add a new user you can use either:

```
$ adduser new_username
```
```
$ useradd new_username
```

To remove/delete a user, first you can use:

```
$ userdel username
```

Then you may want to delete the home directory for the deleted user account :

```
$ rm -r /home/username
```

To allow user to execute `sudo` commands, add the user to the group that can run *any* command:
```
$ usermod -aG sudoGroup username
```
You can find out the group name by running `visudo` which opens `/etc/sudoers` file:
```
#Allows people in group wheel to
# run all commands
 %wheel      ALL=(ALL)       ALL

#on Debian systems
 %sudo       ALL=(ALL)       ALL
```
Or you can manually modify the same file and add the username under:
```
# User privilege specification
root       ALL=(ALL:ALL) ALL
newuser    ALL=(ALL:ALL) ALL
```

To modify the username of a user:

```
$ usermod -l new_username old_username
```

To change the password for a user:

```
$ passwd username
```

To change the shell for a user:

```
$ chsh username
```

To change the details for a user (for example real name):
```
$ chfn username
```

---
## Practice

Create a new user:
```
$ ??? enkiUser
```
Change their name:
```
$ ??? enki ???
```
And add them to the `sudo` group:
```
$ ??? ??? ??? 
                       enki
```
*`useradd`
*`usermod -l`
*`enkiUser`
*`usermod`
*`-aG`
*`sudo`
*`usermod -n`

---
## Revision

The 2 equivalent commands for adding a new user are 

???.
*`adduser / useradd`
*`adduser / usermod -a`
*`useradd / usermod -n`
*`chsh / usermod -a`