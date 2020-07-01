---
author: catalin

levels:

  - advanced

  - medium

type: normal

category: how to

---
# Keeping `/boot` read-only

---
## Content

It's a good thing to keep the Linux **kernel** and all its associated files **read-only**.

By default, the `/boot` directory which stores all files regarding the kernel is **read-write**. 

Changing it to be **read-only** will decrease the risk of compromise or alteration of critical boot files.

To do that, the `/etc/fstab` file must be opened (keep in mind this applies for `ext2` partitions):
```
nano /etc/fstab
```

Append the following line at the end of the file and then *save* it:
```
LABEL=/boot  /boot  ext2  defaults,ro  1 2

```

---
## Revision

What file would you have to modify to make `/boot` read-only? 

???
* /etc/fstab
* /etc/boot.conf
* /boot/conf
* /boot/fstab
 
 
