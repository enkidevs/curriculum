---
author: JyotiBajaj

levels:

  - basic

  - advanced

  - medium

type: normal

category: tip

aspects:
  
  - introduction
  - obscura
  - workout

links:

  - '[Debugging with Git](https://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){website}'


---

# Let's play the blame game

---
## Content

```
git blame [file_name]

```
The blame command is a Git feature, designed to help you determine who made changes to a file or when the file was last changed by someone. This can be used to find out what and when, feature(s) were added in a release with a process known as 'blamestorming'.

In this screen shot the blame command shows who and when changes were made in this file:

```
$ git blame ./com/mypackage/login/Login.java
 566a0863 (joe 2011-07-12 09:43:39 +0100 1)
 package com.mypackage.login;
 ed0a7c55 (Ale 2011-07-12 09:43:51 +0100 2)
 import java.util.Arrays;
8372b725 (john 2011-07-12 09:44:06 +0100 3) 
 public class Login {
ed0a7c54 (chen 2011-07-12 09:43:51 +0100 4)
 private int count;

```

---
## Practice

Complete the command to see the changes made to a file and by whom:
```
$ ??? ??? 
         src/myPackage/Main.java
```

* `git`
* `blame`
* `check`
* `add`

---
## Revision

`git blame` shows

 ???

* changes made to a file and by whom
* active developers for the repository
* nothing

 
