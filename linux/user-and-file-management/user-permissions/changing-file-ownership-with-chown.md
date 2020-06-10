---
author: jfarmer

type: normal

category: must-know

tags:
  - introduction
  - workout

aspects:
  - introduction
  - workout

---

# Changing File Ownership With `chown`

---
## Content

The `chown` command allows us to change the both the user and group ownership of files and directories. The user running this command must have root access.

To change the user who owns a specific file run the following (`jesse` is just an example username):

```shell
sudo chown jesse /path/to/some/file
```

To change both user and group run the following (again, `new-group` is an example group name):

```shell
sudo chown jesse:new-group /path/to/some/file
```

To change only the group run:

```shell
sudo chown :new-group /path/to/some/file
```

> 💡 If you don't have root access, you can change the permissions of the file using `chmod` **if you are the owner of that file**. You can't change ownership (with `chown` or `chgrp`) without root access.

### Recursively Changing Ownership

It's sometimes necessary to change the user/group who owns every file and subdirectory in a given directory. Use the `-R` option to do this, but be careful: you don't want to accidentally change the ownership of thousands of files by mistake.

It would look something like this:

```shell
sudo chown -R jesse:new-group /some/directory
```

> ❗ This command would not just change the owner of the `/some/directory` directory, but every file and subdirectory therein.

---
## Practice

To change the owner of a file using `chown` you need to ???.

* have root access
* be the owner of the file
* have read permissions for the file

---
## Revision

Change the group for the `enki.txt` file:
```
??? ??? 
  ??? ???
```

* `sudo`
* `chown`
* `:new-group`
* `./enki.txt`
* `new-group`
* `chmod`

 
