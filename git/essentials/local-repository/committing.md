---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - workout
  
inAlgoPool: false


links:

  - '[Git Commit Tutorial](https://www.atlassian.com/git/tutorials/saving-changes/git-commit){website}'


---

# Committing

---
## Content

Committing is the action which permanently stores changes in a file as part of the **Git** repository. For this operation, all you have to do is issue the `git commit` command.

Generally, **Git** will never change the contents of a commit, making **commits** permanent and representative for the state of the project at that time.

You can commit the staged snapshot[1] by running:
```bash
$ git commit
```
Immediately, you will be prompted with the default text editor asking for a *commit message*. After filling the commit message and saving the file, the actual **commit** is created.

To commit and avoid the text editor you can include a commit message as part of the command like this (`-m` for "message"):
```bash
$ git commit -m "Description of changes"
```
You can also use the `-a` flag to commit all changes of **tracked** files (even though they were modified, but not staged with `git add`):
```bash
$ git commit -a
```

---
## Practice

Write the command to commit all tracked files:
```
$ ??? ??? ???
```

* `git`
* `commit`
* `-a`
* `-m`
* `-h`
* `branch`
* `git-commit`
* `add`

---
## Revision

What flag is used to commit with a message specified within the command?
```
$ git commit ??? "the message"
```

* `-m`
* `-a`
* `-message`
* `-h`
* `-d`

---
## Footnotes
[1: Staged snapshot]
This refers to what has been staged following a `git add` command. Unless you staged the changes, you won't be able to make a commit:
```bash
$ git status
# On branch develop
# Your branch is up-to-date
#   with 'origin/develop'.
# nothing to commit,working directory clean
$ git add .
$ git status
# On branch develop
# Your branch is up-to-date
#   with 'origin/develop'.
# Changes to be committed:
# modified:  src/index.js

```
 
