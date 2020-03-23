---
author: tuwidc

levels:

  - basic

  - advanced

  - medium

type: normal

category: how to

tags:

  - secure delete

  - shred

  - erase

  - terminal

  - linux

  - forensics

  - workout


links:

  - '[Gutmann Method](https://en.wikipedia.org/wiki/Gutmann_method){website}'


aspects:
  - workout


---

# Deleting files in a secure manner

---
## Content

You can delete files in a relatively secure way using `shred`. 

`Shred` is obtainable through the installation of `coreutils` (Ubuntu has it preinstalled). `shred` securely erases and overwrites single files with the `Gutmann`[1] method. 

Fast shredding:
```
$ sudo shred -vzn 0 /dir/file
```

The above will overwrite the *file* with 0s in a single iteration. 

Secure shredding:
```
$ sudo shred -vzn 3 /dir/file
```
The shredding process is repeated 3 times,  using random numbers. 

In addition, option `-z` writes zeros to hide the shredding process at the end. This will take 4 times longer than the fast method.

Shredding efficiently deletes everything including file system caches in case of a partition. It can also be used to remove unwanted remnants of deleted files.

---
## Practice

Use shred to delete `old_folder` , in 2 iterations, without hiding the shredding process:
```
$ ??? ??? ??? ??? 
                 ~/old_folder
```

* `sudo`
* `shred`
* `-n`
* `2`
* `-zn`
* `-fz`
* `rm`

---
## Revision

To delete files in a secure manner you can use 

??? .


* `shred`
* `rm`
* `del`

---
## Footnotes
[1:Gutmann Method]
An algorithm for secure deletion of files. It involves overwriting to-be-deleted data with 35 patterns of bits so it cannot be recovered.
 
