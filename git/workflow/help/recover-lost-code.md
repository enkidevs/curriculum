---
author: rosielowther

levels:

  - advanced

type: normal

category: must-know

aspects:

  - workout
  - deep


links:

parent: check-the-reflog

---

# Recover lost code

---
## Content

If you have committed or pushed your code anywhere, then in most cases it is not lost for good.

To check the reflog:
```
$ git reflog
```
If the lost commit is there, you can retrieve it using its checksum:
```
$ git branch myBranch ca3df45
```
Then you can merge this into your current branch.

To search for orphan commits[1]:
```
$ git fsck --full
```
Again you can merge a commit into your current branch.

---
## Practice

Create a `newBranch` that has the `ba23fe1` commit as the starting point:
```
$ git ??? ??? ba23fe1
```

* `branch`
* `newBranch`
* `temp`
* `log`
* `reflog`
* `master`

---
## Revision

Check the reflog :
```
$ git ??? ???
```

* `reflog`
* `-g`
* `-m`
* `-l`

---
## Footnotes
[1:orphan commits]
Orphan commits are just commits that get lost in various scenarios. One such example would be running `git reset --hard HEAD^`.
 
