---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - workout
  - deep

links:

  - '[Git Merge Tutorial](https://www.atlassian.com/git/tutorials/using-branches/git-merge){website}'


---

# Merging under the hood

---
## Content

Using the `git merge`, you can combine different development streams (branches).

Even though the operation is mostly automated, **Git** has several ways of handling the merge internally:

### 1. Fast-forward merge

When there is a **linear** path between the **current** current branch and the one you want to merge **into**, Git can perform a fast-forward merge.

Because there is no divergence between the branches, **Git** can move current branch pointer to the last commit of the **targeted** branch.

### 2. No fast-forward

In the case of a fast-forward merge, you can use the `--no-ff` flag to change the behavior of the merge. Instead of simply moving the HEAD pointer forward, a new `commit` is created.

This option is used to preserve historical information when merging.

### 3. Three-way merge

Three-way merging is used when fast-forwarding is not applicable - when they diverge by too much. **Git** will combine the two histories of the merging branches into a new *snapshot* and then point to that new commit.

When both branches modify the same part of the same file, conflicts are explicitly revealed.

---
## Revision

What flag can be used such that fast-forward merge is not used even if its possible?
???


* `--no-ff`
* `-n`
* `-n-ff`
* `ff-n`
* `--twm`

 
