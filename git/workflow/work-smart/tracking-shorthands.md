---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:

  - workout
  - deep
  - obscura

links:

  - '[Tracking Branches Official Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches#_tracking_branches){website}'


---

# Tracking shorthands

---
## Content

The following git commands all have the same effect: set up a local branch `sharefix` to track the remote branch `sharefix` from `origin`, then switch to the new branch.

Full version:
```
$ git checkout -b sharefix origin/sharefix
```
`--track` shorthand:
```
$ git checkout --track origin/sharefix
```
Automatic:
```
$ git checkout sharefix
```
The final option works if the branch name you’re trying to checkout doesn’t exist locally and also matches a name on only one remote.

---
## Practice

The shorthand command to set up a new branch and track it is:
```
$ git ??? --??? 
          origin/sharefix
```

* `checkout`
* `track`
* `follow`
* `branch`

---
## Revision

The shorthand command to set up a new branch and track it is:
```
$ git ??? --??? 
          origin/sharefix
```

* `checkout`
* `track`
* `follow`
* `branch`

 
