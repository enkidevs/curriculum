---
author: catalin
type: normal
category: feature
links:
  - '[webchick.net](http://webchick.net/node/99){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Get the most out of **Git**


---

## Content

**Git** offers a plethora of tools specifically intended to enhance and make your workflow more flexible.

When you are working you often want to see what has changed. Using the `git diff` command you can see how the working tree (current local state of the files) is different from the `HEAD` (last commit on your branch)[1]:

```bash
git diff
# ...
# - Old line
# + New line
# ...
```

If you want to see the latest commits on all branches simply use[2]:

```bash
git branch -v
# *master 23f2g2e fixed bugs
# feature 249enki implemented share
```

If you don't want to merge or rebase two branches in their entirety, but just want to apply one or more commits from one branch to another, you can use the `git cherry-pick` command:

```bash
# say you need to apply a commit on master
git checkout master
# specify the commit id after the command
git cherry-pick 51241js
```


---

## Practice

To just apply a commit without merging or rebase you can use:

```bash
git ???
```

- `cherry-pick`
- `diff`
- `commit --amend`
- `revert`
- `add`


---

## Revision

Complete the code snippet such that the command, if ran, will show the latest commits on **all** branches:

```bash
git ??? ???
```

- `branch`
- `-v`
- `-all`
- `list`
- `commit`
- `all`
- `diff`


---

## Footnotes

[1: diff command]
Instead of seeing the differences for all the files, you can specify a file the command will target:

```bash
git diff thisFile.txt
```

To see the difference between two branches you can use the following syntax:

```bash
git diff <source_branch> <target_branch>
```

[2: branch command]

The `*`(asterisk) marks the branch you are currently on.
