---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction
  - workout
  - obscura

links:

  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}

---
# Adding a remote repository

---
## Content

A remote repository is a version of your project that is hosted on the Internet or on your network.

To add a remote repository:
```bash
git remote add enki https://git.enki.com
git remote
enki
```
You can now use the shortname `enki` to represent the whole URL.

If you clone a remote repository, the default name for the server you cloned from is `origin`:
```bash
git clone https://git.enki.com
git remote
origin
```

---
## Practice

What does this code do?
```bash
git remote add test
     https://git.enki.com
```
???

* Adds a remote repository `test`
* Clones a remote repository `origin`
* Tests the remote repository `enki.com`

---
## Revision

Add the remote repository and give it a shortname `experiment` :
```bash
git ??? ??? ???
     https://git.enki.com
```

* remote
* add
* experiment
* clone
* test
* origin
 
 
 
