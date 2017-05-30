# The Git working tree
author: catalin

levels:

  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [git-scm.com](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics){website}

---
## Content

During the development process a project consists of many files.

Those files you are currently working on - and changes that may not be committed as part of a **Git** repository - constitute the **working tree**.  Some of these files _may be_ part of a previous commit, but in a different form.

The **working tree** represents files that have been **created**, **updated** or **modified** and diverge from the contents of the most recent commit.

Files in the working tree are represented in **Git** based on different statuses:
- `untracked` - file is not tracked. It was never staged nor committed   
- `tracked` - file is part of a commit, but changes are not currently staged
- `staged` - changes in the file will be included in the next commit
- `dirty` or `modified` - file is changed, but the change is not staged

A user can add the changes to a repository at any point through **commits**, but also **revert** those changes.

---
## Practice

What status does a file have if it was previously committed, but is not staged?

???

*`tracked`
*`untracked`
*`staged`
*`modified`

---
## Revision

How are changes added to a repository?

???

* through a **commit*
* automatically
* by staging them
* putting them in the **working tree**