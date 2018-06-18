---
author: catalin

levels:

  - basic

  - medium

type: normal

category: how to



parent: ssh-pipes

---

# Run local scripts remotely

---
## Content

Let's say you locally have a script that you want to run on a remote machine.

This can be done by securely copying the file on the server first (`scp`) , yet login on the remote machine is necessary.

The `enki.sh` script can be run directly on the remote machine with the following command:
```
$ ssh user@enki 'bash -s' < enki.sh
```   
The output of `enki.sh` will be displayed locally.

---
## Revision

Run a local script on a remote machine:
```
$ ??? ??? 'bash -s' 
        ??? enki.sh
```

* `ssh`
* `user@server`
* `<`
* `|`
* `cp`
* `user`

 
