---
author: tuwidc

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - linux

  - ssh

  - bruteforce

  - rsa

  - id_rsa

  - certificate

  - public

  - private

  - key

---
# Disable SSH password authentication 

---
## Content

To combat *brute force* attacks, it is possible to disable password authentication.

First, allow log-in by certificate. 
Copy the contents of your `~/.ssh/id_rsa.pub` into the `~/.ssh/authorized_keys` file on the server:

```bash
cat ~/.ssh/id_rsa.pub | 
    ssh user@hostname 'cat >> 
       ~/.ssh/authorized_keys &&
       chmod 700 ~/.ssh/ &&
       chmod 600 ~/.ssh/authorized_keys'
```

Then, open `/etc/ssh/sshd_config` and find: 

```
PasswordAuthentication yes
```

Change it to: 

```
PasswordAuthentication no
``` 

Restart the `SSH` server daemon to apply the change:
```bash
sudo service ssh restart
```

Now it is only possible to `SSH` into the server using a key that matches a line in `~/.ssh/authorized_keys`. 

Brute force attacks are no longer effective because even a correct password guess will be rejected.

---
## Revision

A reason *not* to disable SSH password authentication is 

???. 
* to ease logging in from multiple machines
* to combat brute force attacks
* to ensure you are the only one who can log
 
 
