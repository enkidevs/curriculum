---
author: mihaiberq

levels:

  - basic

type: normal

category: must-know

aspects:
  - deep
  - obscura
  - workout

link:
  - '[git reset --soft vs --hard](https://stackoverflow.com/questions/3528245/whats-the-difference-between-git-reset-mixed-soft-and-hard){website}'

---

# Reset vs. Revert

---
## Content

One of the most useful commands to undo *uncommitted* changes made to files is **git reset**. If the changes are already committed, you wouldn't want to override the history and you'd use **git revert**. 

The principle behind them is fairly straight forward: you have to go back to a point in time when your project actually worked. Consider the following situation: 
```bash
$ git add .
$ git status
On branch feature
Your branch is up-to-date with
  'origin/feature'
Changes to be committed:
  modified: file1
  modified: file2
  new file: file3
```
You discovered an ugly bug right before committing and are looking to go back to the moment in time right before you started writing code. To do that, issue:
```bash
$ git reset --hard HEAD
```
This will reset everything to the last commit, **deleting any record** of the changes being made. Somehow, this is equivalent to deleting the local repository and cloning it again (assuming that the last commit is pushed to the remote as well - "your branch is up-to-date...").

In case of multiple commits:
```bash
# A, B, C are commits' SHA1
... - A - B - C
```
Reseting to `A` instead of `HEAD` means losing any record of commits `B` and `C`. To move the `HEAD` to `A` but keep `B` and `C` as staged and ready to commit, use the `--soft` flag:
```bash
$ git reset --soft A
```

`git revert`, on the other hand, doesn't meddle with the history. All it does is to create a new commit **undoing the changes** of the specified commit. If commit `B` added the `b.txt` file:
```bash
 $ git revert B
 # Revert "add b.txt"
 # This reverts commit B
 # ...
```

This history will now look like this, where `D` is the revert commit:
```bash
... - A - B - C - D
```

---
## Practice

Is the following statement true or false?

Reverting a commit means deleting the entire history of commits between that commit and the newly added one.

???


* False
* True
* It depends on the case

---
## Revision

Complete the command that would delete any record of uncommitted changes made since the last commit:
```bash
$ git ???
```

* `reset --hard HEAD`
* `reset --soft HEAD`
* `reset HEAD`
* `reset`

 
