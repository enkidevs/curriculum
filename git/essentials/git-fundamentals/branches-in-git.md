---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Git Branching Official
    Documentation](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell){website}
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

# Branches in Git


---

## Content

Branching allows developers to diverge from the main line of development without affecting other work.

Branching in **Git** differs dramatically from other VCS and is considered its "killer feature". Branches in **Git** are considered lightweight and simple.  For that reason branching, which is 'feared' in other VCS is highly encouraged in **Git**.

Understanding and mastering this is paramount to proficiency and expertise with **Git**.

Conceptually, a branch is divergence at a specific point from your working tree[1]

Changes (technically commits) are added to the history of the current branch, resulting in a fork[2] in the project history.
In practice, a branch is merely a **pointer** to a specific commit object.

With the `git branch` command you can create, edit, rename and remove branches.

Branches are often used as a "reference" when working with `git merge`[3] and `git checkout`.

To list all your branches:

```bash
git branch
* develop
new-feature
master
```

Create a new branch:

```bash
git branch my-branch
# will not switch to it

```

Delete a branch:

```bash
git branch -d my-branch
# unmerged changes will stop this
git branch -D my-branch
# will force delete
```

To rename the current branch:

```bash
git branch -m new-branch-name

```

Thinking of a branch as a pointer to a specific state of the repository, we can visualize how changing to a different branch takes us to a different stage of the same project. Different changes of the same project are stored on different branches. To change the branch we are on, we can use `git checkout`[4]:

```bash
git checkout my-branch
```


---

## Practice

Complete the command below to force the delete of `my-branch`:

```bash
git ??? ??? my-branch
```

- `branch`
- `-D`
- `-d`
- `-f`
- `force`
- `-m`
- `checkout`


---

## Revision

The command used in **Git** to switch between branches:

```bash
???
```

- `git checkout`
- `git branch`
- `git branch -m`


---

## Footnotes

[1:working tree]
The **working tree** consist of files that you are currently working on.

[2:fork]
A **fork** is a copy of a repository. Forking a repository allows you to freely experiment with changes without affecting the original project.

[3:merging]
**Merging** is the operation of combining different lines of development (branches) into a single one.

[4:checkout]
Using the `git checkout` command together with the `-b` flag, you can simultaneously create a new branch and switch to it:

```bash
git checkout -b my-branch
```
