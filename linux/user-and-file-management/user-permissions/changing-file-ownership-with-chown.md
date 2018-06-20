---
author: jfarmer

levels:

  - basic

  - beginner

type: normal

category: must-know

inAlgoPool: false

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

The `chown` command allows us to change the both the user and group ownership of files and directories.  The user running this command must have write permission to the file in question.

To change the user who owns a specific file run the following (`jesse` is just an example username):

```shell
$ chown jesse /path/to/some/file
```

To change both user and group run the following (again, `new-group` is an example group name):

```shell
$ chown jesse:new-group /path/to/some/file
```

To change only the group run:

```shell
$ chown :new-group /path/to/some/file
```

If you don't have permission to change the owner of a file but you have permission to use `sudo` then you can run the `chown` command using `sudo`, e.g., `sudo chown jesse:new-user /path/to/some/file`.

### Recursively Changing Ownership

It's sometimes necessary to change the user/group who owns every file and subdirectory in a given directory.  Use the `-R` option to do this, but be careful: you don't want to accidentally change the ownership of thousands of files by mistake.

It would look something like this:

```shell
$ chown -R jesse:new-group /some/directory
```

This command would not just change the owner of the `/some/directory` directory, but every file and subdirectory therein.

---
## Practice

You can change the owner of a file without having to use `sudo` when 

???

* You have write permissions for the file.
* You have execute permissions for the file.
* You have read permissions for the file.
* The file has the sticky bit permission.

---
## Revision

Change the group for a file:
```
$ ??? ??? ??? 
          ???
```

* `sudo`
* `chown`
* `:new-group`
* `enki.txt`
* `new-group`
* `chmod`

 
