---
author: rosielowther

levels:

  - basic

type: normal

category: feature

aspects:
  
  - workout
  - introduction


links:

  - '[Tracking Branches](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){documentation}'

parent: managing-branches

---

# Viewing your tracking branches

---
## Content

You can view your tracking branches by using the `-vv` option.

For example:
```
$ git branch -vv
  master    2bcd45a [origin/master]
   introduce new game
* scrollfix 12ac79d [uiTeam/uiFix: 
   ahead 2, behind 1] fix scrolling
```
In this case, the `master` branch is up to date. The `scrollFix` branch is tracking the `uiFix` branch on the `uiTeam` server. There are two commits on the local branch which you haven't pushed and one commit on the server which you haven't merged.

Note: the information displayed relates to the last time you connected to the server. Use `git fetch --all` first to be totally up to date.

---
## Practice

After running :
```
$ git branch -vv
  master  2bcd45a [origin/master]
  Bug resolved
 * newfeature 12ac79d 
     [myServer/newFeature:ahead 2]
     add new screen
```
It can be said that:

`master` is ??? 

`newFeature` is ???.


* up-to-date
* ahead of the remote branch by 2 commits
* behind of the remote branch by 2 commits
* untracked

---
## Revision

To see the status of your tracked branches in relation with their upstream counterpart, you would run
```
$ git ??? ???
```

* `branch`
* `-vv`
* `--vv`
* `-branch`

 
