---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: hack

aspects:

  - deep
  - workout


links:

  - '[Git Reset](https://git-scm.com/docs/git-reset){documentation}'


---

# Move the last commit to a new branch

---
## Content

If you commit to the current branch when instead you wanted to commit to a new branch, you can easily correct your mistake.

For example if you made your commit to `master` instead of `test`:
```
# create new branch from
# current HEAD
# but stays on master
$ git branch test

# reset master to before last commit
$ git reset --hard HEAD~

# continue on new branch
$ git checkout test
```

---
## Practice

The order in which you would correct the mistake is :
```
???
???
???
```

* `git branch test`
* `git reset --hard HEAD~`
* `git checkout test`
* `git reset --hard HEAD^^`

---
## Revision

A quick hack to revert the changes made to the current branch and move them to another is

???

* creating a new branch and resetting HEAD on master
* deleting the current branch and switching to the master
* resetting the last commit and moving to a new branch

 
