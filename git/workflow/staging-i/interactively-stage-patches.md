---
author: rosielowther

levels:

  - medium

type: normal

category: feature

aspects:

  - workout
  - deep

links:

  - '[Interactive Staging](http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging){documentation}'


---

# Interactively stage patches

---
## Content

To partially stage a file:
```
$ git add -p
# or
$ git add --patch
```
Alternatively, when performing an interactive stage, you can type `5` (patch) in the interactive shell.

Once you have selected a file, git will display hunks of the file diff and then ask:
```
Stage this hunk [y,n,a,d,/,j,J,g,e,?]? >
```
You can then choose yes `y`, no `n` or other options such as skipping a hunk.

---
## Revision

Complete the following code snippet to partially stage a file:
```
$ ??? ??? ???
```

* git
* add
* -p
* -patch
* stage

 
