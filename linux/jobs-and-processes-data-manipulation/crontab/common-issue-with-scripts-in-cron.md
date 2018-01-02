# Common issue with scripts in `cron`
author: tuwi.dc

levels:

  - basic

  - advanced

  - medium

type: normal

category: caveats

tags:

  - linux

  - cron

  - script

  - executable

parent: practical-cron

---
## Content

Setting up scripts in `cron` without setting the execution permission first is a common mistake.

This will cause ``cron`` to call a script that is not executable and thus fail.

By running:
```
$ chmod +x /path/to/script
```
The permissions are set, making it executable.

---
## Practice

Make `enki.py` file executable:
```
$ ??? ??? enki.py
```
* `chmod`
* `+x`
* `-x`
* `chch`

---
## Revision

If the user doesn’t have execute rights for a file, `cron` may

???.
* fail to run the scripts
* set the rights automatically
* still execute them
