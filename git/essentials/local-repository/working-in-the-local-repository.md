---
author: catalin
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Working in the local repository


---

## Content

Changing the content of the files in your **Git** project won't directly affect your local repository. To do this, you must perform some operations to make sure your changes are permanently stored.

From the perspective of **Git**, files can be:

- **tracked** - these files were part of the most recent file snapshot and will be flagged as *modified*, *unmodified* or *staged*. 
- **untracked** - were not part of the last snapshot, nor are in the staging area

When **Git** detects a file is edited and it's different from the previous commit, it will be flagged as *modified*.

The next step is to get the file in the **staging area**. You can add a snapshot of a file there with the `git add` command.

Last, and most important, you permanently store the **staged** files to the **Git** repository only when the `git commit` command is executed.


---

## Practice

Files that are not in the staging area and were not included in the last commit are:

???

- untracked
- staged
- added
- tracked
- modified


---

## Revision

Using the `git add` command you include modified files to the ???.

- staging area
- git repository
- working tree
- GitHub
