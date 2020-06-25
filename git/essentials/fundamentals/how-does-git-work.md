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

  - '[Git Basics Official Documentation](https://git-scm.com/book/en/v2/Getting-Started-Git-Basics){website}'


---

# How does Git work?

---
## Content

Being able to use **Git** effectively requires understanding how it works on a fundamental level.

First, the main difference between **Git** and other **VCS**s is the way it handles data. Most systems think of the information they keep as a set of files and the changes made to each file over time.

Instead, **Git** thinks of data like a set of *snapshots*. Conceptually, every time a change is made in the project, a picture is taken of how every file looks at that moment and a reference to that is stored as a snapshot. The act of saving the snapshot is called **committing**. The snapshot stored in the repository is called a *commit*.

Additionally, to grasp the workflow of **Git**, you must be able to differentiate possible states of a file and to know how to work with them. There are two types of files inside a **Git** repository:
- `untracked` : Git doesn't know about the file's existence and can't be included in a commit.
- `tracked` : Git will take this file into account when calculating what to be committed.

Another critical aspect of **Git** is that almost all of its operations are local, with all information such as history being an integral part of the repository. This boosts the speed of many operations and makes working with **Git** easier than with some other VCSs - since a connection to the Internet is not always necessary.

---
## Practice

You can store a snapshot of the data in the local repository by

???

* `committing`
* `tracking`
* `creating a Git repository`
* `doing nothing, Git saves them automatically`

---
## Revision

How does **Git** think of data?

???


* as snapshots
* as a set of files and changes made to them over time

 
