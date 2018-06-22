---
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - permissions

  - file

  - terminal

  - ssh

  - stat

  - introduction



parent: understanding-umask

aspects:
  - introduction


---

# Get file permissions in octal form

---
## Content

Use the `stat` command to get a file's permissions in octal form:
```
$ stat -c "%a %n" file
```

From the man page of `stat`:
```
-c  --format=FORMAT
%a     Access rights in octal
%n     File name
```
Examples for files:
```
$ stat -c "%a %n" .ssh/id_rsa 
600 .ssh/id_rsa
```
Folders:
```
$ stat -c "%a %n" /var/www
755 /var/www/
```

---
## Revision

You can use `stat` to get file permissions in octal form as:
```
$ stat ??? ??? ???
```

* `-c`
* `”%a %n”`
* `filename`
* `”%c %n”`
* `-oc`

 
