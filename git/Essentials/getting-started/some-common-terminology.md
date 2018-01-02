# Some common terminology
author: catalin

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [help.github.com](https://help.github.com/articles/github-glossary/){website}

---
## Content

It's of upmost importance to understand the common terminology in **Git** in order to fully grasp how it works.

This terminology includes the following terms:

### Branch
A `branch` is a movable pointer that always points to the most recent commit. Branches are used for different team members to work concurrently without affecting the main repository.

You can *create* a branch, work on it, *switch* between branches and *merge* changes.

### Revision

A `revision` is a different version of the repository.
### Commit

When you want to save your work in a repository you `commit` the changes (the contents of the **working tree**). This will create a special commit object that uniquely identifies a new revision of the content in that repository.

### HEAD

The `HEAD` is usually a reference to the last commit in the branch currently in use.


### Tag

A `tag` is a pointer to a specific commit which uniquely identifies a repository version. Tags are used to easily revert to old versions when in need.

### Staging area

The `staging` area is where work expected to be committed is staged.
### Index

The **staging area** is also be referred to as `index`.

---
## Practice

What other name does the **staging area** have?

???

*index
*HEAD
*tag
*stage

---
## Revision

What is the **HEAD** ?

???

* A reference to the last commit of the current branch
* A different version of the repository
* The place where the work is stored until a commit is made
* A pointer to o specific commit
