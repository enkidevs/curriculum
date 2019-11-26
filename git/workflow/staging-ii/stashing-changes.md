---
author: rosielowther

levels:

  - basic

  - beginner

type: normal

category: feature

aspects:

  - workout
  - deep


links:

  - '[Stashing And Cleaning](http://git-scm.com/book/en/v2/Git-Tools-Stashing-and-Cleaning){documentation}'

notes: ''

---

# Stashing changes

---
## Content

If you want to switch branches but aren't ready to commit the work on your current branch, you can stash the changes on the stack:
```
$ git stash
Saved working directory and index state
"WIP on master: bc43f10 Edit index.html"
```
Your working directory will now be clean and you can switch branches.

To view current list of stashes:
```
$ git stash list
stash@{0}: WIP on master: bc43f10 
 Edit index.html
stash@{1}: WIP on master: c26ded3
 Add new game style
```
To apply a stash:
```
$ git stash apply stash@{1}
```
You don't have to apply the stash to the same branch you made it on. git will get you to merge any conflicts to apply it cleanly.

To remove a stash from the stack:
```
$ git stash drop stash@{0}
```

You can apply the stash and remove it from the list in one command:
```
$ git stash pop
```

---
## Practice

You can stash code more than once on the same branch. To see all the existing stashes you have to run:

```$ ??? ??? ???```

* `git`
* `stash`
* `list`
* `pop`
* `apply`

---
## Revision

```$ git stash ???```

 applies the last stash and removes it from the list.

* `pop`
* `apply`
* `list`

 
