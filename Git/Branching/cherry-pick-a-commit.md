# Cherry-pick a commit
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: managing-branches

links:

  - >-
    [swsblog.stanford.edu](https://swsblog.stanford.edu/blog/cherry-picking-small-git-lesson){website}

---
## Content

Cherry-pickin[1]g is the[2]  method to apply a single, specific commit from another branch.iA  

For example:
```
$ git checkout master
$ git cherry-pick a456bd7
# merge commit a456bd7 (from another branch)
# with branch master
```
This is most useful when you are unable to merge the two branches. For example, you might want to fix a security issue present in both branches.

---
## Practice

The commit cherry-picked in the example was applied on ???. ???

*master
*second
---
## Revision

In order to apply a *single* commit (from another branch) on the current branch, you use
```
$ git ??? a456bd7
```
*`cherry-pick`
*`pick`
*`merge
---
## Footnotes

[1:ala bala]
Hello there.

[2:two]
Second footnot
```
This is a really long code line which should not pass the editor checker for code width. Hopefully.
```
