---
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

tags:

  - deep

  - workout




aspects:
  - deep
  - workout


---

# The `setgid` permission

---
## Content

The `setgid` permission stands for **set group id**. This permission is similar to `setuid`, except that the process's effective group ID is changed to the *group owner* of the file, and access of a *user* is granted based on permissions assigned to that group. Therefore, the file belongs to the group that owns the directory, not to the user's group ownership.


When `setgid` permission is applied to a directory, files that were created in this directory belong to the group to which the directory belongs, not the group to which the creating process belongs.


To set the `setgid` bit on a file:
```
$ chmod g+s enkiscript

```

Remove the `setgid` bit:
```
$ chmod g-s enkiscript

```

To remove both `setuid` and `setgid` with octal alternative:
```
$ chmod 0777 enkiscript
```

Find all files with `setgid`:
```
$ find / -type f -perm /2000 -exec stat
         -c "%A %a %n" {} \;
```

---
## Practice

Say `team` directory belongs to group `enki` and has `setgid` permission enabled.

If a user of group `test` creates a new file in that directory, which group will own the file?

???


* enki
* test
* both groups

---
## Revision

How do you apply `setgid` bit to a file?
```
$ ??? ??? myfile
```


* `chmod`
* `g+s`
* `g-s`
* `u+s`
* `a-s`
* `perm`

 
