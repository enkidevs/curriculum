---
author: tuwi.dc

levels:

  - advanced

  - medium

type: normal

category: how to

tags:

  - linux

  - kernel

  - cleanup

  - remove

  - dpkg

  - update

  - grub




---

# Removing old kernels in Debian based systems

---
## Content

Ubuntu and Debian based systems keep old kernel images as a fall-back in case newer kernels fail. To check the current kernel:
```
$ uname -r 
```

List all installed kernels on the system:
```
$ dpkg --list | grep linux-image
...
ii linux-image-4.4.0-21-generic
rc linux-image-3.13.0-67-generic
...
```

`rc` means the package is in remove state and only config file exists.

`ii` means package is in install and usage state.

Looking at the above outputs, identify the  kernels that are lower (and older) than our current kernel and remove them with:
```
$ sudo apt-get purge 
          linux-image-x.x-generic 
```

Then update the `grub` configuration:
```
$ sudo update-grub2 
```

Keep in mind that it is a good practice to keep the last two previous kernels, in case a rollback is needed.

---
## Practice

Complete the following command to delete kernels older than the current one :
```
$ ??? ??? ??? 
       linux-image-x.x-x-generic
```

* `sudo`
* `apt-get`
* `purge`
* `-rm`
* `del`
* `ker-get`

---
## Revision

The command which outputs the current kernel is

`???` .


* `uname -r`
* `uname -k`
* `kernel -v`
* `get -k`

 
