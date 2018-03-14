---
author: rosielowther

levels:

  - basic

  - medium

type: normal

category: must-know




---

# You can use git offline!

---
## Content

You can use almost all of git's features offline, as git only needs to read from your local repository.

You can continue to make commits when you are offline and wait until you have a network connection to push your changes to a server.

For example, this is all ok offline: 

```
# make a new commit
$ git commit -m 'New button'

# search the history
$ git log --pretty="%h: %s"
bc15f3c: New button
b423c5d: Fix scrolling bug

# switch to branch testing
$ git checkout testing
```

---
## Practice

Some of the commands that run just fine while `git` is offline are 

??? .

* commit, log, checkout
* commit, log, push
* pull, push, status

---
## Revision

Some of the commands that run just fine while `git` is offline are

 ??? .

* commit, log, checkout
* commit, log, push
* pull, push, status

