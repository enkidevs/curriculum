---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction
  - workout
  - deep

links:

  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}

---
# Remote repositories: viewing, editing and deleting

---
## Content

**Viewing**

To list the shortnames of all the remote repositories that you have configured:
```
$ git remote
origin
```
If you use the flag `-v` you can see the URLs associated with each shortname:
```
$ git remote -v
origin https://git.enki.com (fetch)
origin https://git.enki.com (push)
``` 
**Editing**

To change the name of a remote repository from `ol` to `nu`:
```
git remote rename ol nu
```
**Deleting**

To remove a remote repository:
```
git remote rm nu
```

---
## Practice

How do you remove the remote repository `enki`?
```
$ ???
```
* git remote rm enki
* git remote --delete enki
* git untrack enki
* git remove enki
* git delete enki

---
## Revision

Rename the remote repository `origin` to `enki`
```
$ git remote ??? ???
                     ???
```
* rename
* origin
* enki
* amend
* old
* new
* rm
 
