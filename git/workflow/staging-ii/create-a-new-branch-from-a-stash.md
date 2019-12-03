---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:

  - workout
  - deep

links:

  - '[Stashing And Cleaning](http://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning){documentation}'

parent: stashing-changes

---

# Create a new branch from a stash

---
## Content

If you want to test out a stash before you apply it to its original branch, you can use the `branch` option:
```
$ git stash branch testing
```
This will create a branch `testing` and checkout the commit you were on when you made the stash. It will then apply the changes and delete the stash if it was successful.

---
## Practice

You can test stashed code using a new branch “testing”:
```
$ git ??? ??? ???
```

* `stash`
* `branch`
* `testing`
* `-stash`
* `new`

---
## Revision

```
$ git stash branch newBranch
```
Applies the ??? changes to a new ??? before merging them into the old one.

* stashed
* branch
* commit
* merged

 
