---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: must-know

aspects:
  
  - deep
  - workout
  

links:

  - '[Remote Branches Official Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}'
  - '[Git Branch Official Documentation](https://git-scm.com/docs/git-branch){website}'


---

# Setting the upstream branch

---
## Content

When you use the `git clone` or `git checkout` commands on a remote repository, a tracking branch is set up automatically.

Instead, you can explicitly set the upstream branch by using the `-u` or `--set-upstream-to` options.

For example, to set the current branch to track the remote branch `scrollFix`:
```
$ git branch -u origin/scrollFix
```

---
## Practice

```
$ git ??? ??? 
        ???/???
``` 
is used to set the current branch to follow the remote branch *newFeature*.

* `branch`
* `-u`
* `origin`
* `newFeature`
* `checkout`
* `-upstream`

---
## Revision

`git clone` and `git checkout` commands on a remote repository set up a ??? branch automatically.

* tracking
* single
* false

 
