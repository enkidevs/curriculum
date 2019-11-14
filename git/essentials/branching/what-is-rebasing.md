---
author: rosielowther

levels:

  - basic

  - medium

type: normal

category: must-know

aspects:
  
  - deep
  - workout
  

links:

  - '[Rebasing Official Documentation](http://git-scm.com/book/en/v2/Git-Branching-Rebasing){website}'


---

# What is rebasing?

---
## Content

The `git rebase` command is a way to combine branches.

In a basic rebase, you 'replay' the changes made on one branch onto the other.

For example, to rebase the changes committed to `scrollFix` onto `master`:
```
$ git checkout scrollFix
$ git rebase master
```
This works by 'rewinding' `scrollFix` to the commit shared by the two branches and saving the changes in a temporary file. The `scrollFix` reference is then set to the same as `master` and the changes are applied. 

You can then get `master` to point at the final commit:
```
$ git checkout master
$ git merge scrollFix
```
Now if you look at the history, it will seem like all the changes happened in series, when they were made in parallel.

---
## Practice

` git rebase master`
restores the current branch to the last ??? shared by the two branches, then ??? the changes made on top of master into the current branch.

* commit
* merges
* checkout
* deletes

---
## Revision

A way to combine two branches by reapplying the ahead commits of the current branch to the head of the other branch is:

```
#checkout to the branch ahead
$ git checkout scrollFix 
$ ??? ??? master
```

* `git`
* `rebase`
* `rewind`
* `redo`
* `checkout`

 
