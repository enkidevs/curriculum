---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - workout
  - deep
  
inAlgoPool: false


links:

  - '[Branching And Merging Official Documentation](https://git-scm.com/book/en/v2/Git-Branching-Basic-Branching-and-Merging){website}'


---

# Merging

---
## Content

Merging is the operation of joining two or more development histories (branches)  together.

 For this, **Git** provides the `git merge` command:
```
$ git merge [head]
```

The merging operation will automatically integrate two different branches into a single one.

Even though the algorithms used for the merge depend on the status of the branches, all of them will merge **into** the current branch. It is important to understand that the *targeted* branch is not affected.

Suppose you are on a branch called `feature` where you committed some work. However, you want to get the feature to the `master` branch; the main branch of development on your project.
```
# current branch - feature
$ git checkout master
# current branch - master
$ git merge feature
# merging feature INTO master
```

However, merging is not always successful because conflicts can arise when both branches had modifications in the **same** file(s) (changes since the time they diverged). In this case **Git** doesn't know what version of the file to choose and requires **your** guidance. 

You can check what files weren't successfully  merged using the `git status` command:
```
$ git status
# On branch master
# You have unmerged paths.
# ...
# Unmerged paths:
# ...
#    both modified:    file.txt
# ...
```
When a merge conflict occurs the `git status` command even provides you directions on how to proceed.
```
$ git status
# On branch master
# You have unmerged paths.
#   (fix conflicts and run "git commit")
...
```

In these files you can see the conflict highlighted by the syntax:
```
<<<<<<< HEAD # master in our case
# master version here
=======
# feature version here
>>>>>>> feature

```
Above the `=======` line you can see the version of the file that was in the `HEAD` before the merge, while under you can see **targeted** branch version[1].

You must manually resolve these conflicts (save the file as you wish it to be) and commit the update(s). You may then push the changes.

---
## Practice

To check what files were not successfully merged automatically:

```
$ git ???
```


* `status`
* `merge`
* `list`
* `checkout`
* `conflicts`

---
## Revision

A merge operation will:

???


* merge target branch into the current one
* merge current branch into the target one
* create new branch combining the current and target branch

---
## Footnotes
[1:conflicts]
These markings are usually in more than one place in the file; everywhere there exists a conflict.
