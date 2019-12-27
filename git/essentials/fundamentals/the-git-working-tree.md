---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:
  - introduction
  
inAlgoPool: false


links:
  - '[Git Basics Official Documentation](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics){website}'

---

# The Git working tree

---
## Content

During the development process, a project can grow to thousands of files.

Those files you are currently working on - and changes that may or may not be committed as part of a **Git** repository - constitute the **working tree**.  Some of these files _may be_ part of a previous commit, but in a different form.

The **working tree** represents files that have been **created**, **updated** or **modified** and diverge from the contents of the most recent commit.

**Tracked** files in the working tree are represented in **Git** based on different statuses:
  - `modified` or `dirty` : the file is changed, but Git has yet to calculate the differences and label the versions.
  - `staged` : the differences are calculated, and the new structure of the project can be saved.
  - `committed` : the new version is safely stored in the repository.

A user can add the changes to a repository at any point through **commits**, but also **revert** those changes.

---
## Practice

What status does a file have if it was previously committed, but it is not currently staged?

???


* `Tracked`
* `Untracked`
* `Staged`
* `Modified`

---
## Revision

How are changes added to a repository?

???


* Through a commit
* Automatically
* By staging them
* By putting them in the **working tree**

 
