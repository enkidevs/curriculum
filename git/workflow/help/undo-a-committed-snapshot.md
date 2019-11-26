---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction
  - workout


links:

  - '[Git Revert](https://www.atlassian.com/git/tutorials/undoing-changes/git-revert){website}'


---

# Undo a committed snapshot

---
## Content

You might find yourself having made a wrong commit. For this scenario, **Git** provides another useful command - `git revert`.

Basic syntax for reverting:
```
$ git revert <commit>
```

This generates a new commit with all the changes introduced in `<commit>` afterwards applying it to the current branch. Suppose this is your most recent commit:
```
$ git commit -m "might be buggy"
```
You can revert the last commit in the branch with:
```
$ git revert HEAD
```
Since `HEAD` is a pointer to the most recent  commit, that one is used to create a **new** commit.

Reverting won't change a project's *history*, making it a **safe** operation.

---
## Practice

Undo the last commit in the current branch:
```
$ ??? ??? ???
```


* `git`
* `revert`
* `HEAD`
* `index`
* `commit`
* `last`
* `@{0}`
* `git-revert`
* `reset`
* `git-reset`

---
## Revision

What command is used to get rid of a commit by undoing the changes introduced by it?

???


* `git revert`
* `git reset`
* `git checkout`
* `git restart`
* `git clean`
* `git commit`

 
