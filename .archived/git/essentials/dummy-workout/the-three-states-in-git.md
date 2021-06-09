---
author: rosielowther
levels:
  - basic
type: normal
category: must-know
aspects:
  - introduction
  - workout
  - obscura
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# The three states in git


---

## Content

In the basic git process, your file can be in one of three states: **modified**, **staged** or **committed**.

First you **modify** a file (e.g. `hello.txt`) in your working directory. 

Then you **stage** the file, which adds a 'snapshot' of it to your staging area:

```bash
git add hello.txt
```

Finally you **commit**, which stores all the staged files in your git repository (a local database):

```bash
git commit -m 'Edit hello.txt'
```

This means the changes you made to `hello.txt` are now saved as a snapshot in the repository.


---

## Practice

Go through the basic commit process:

```bash
# enki.md modified
git ??? enki.md
git ??? ??? 'Changed enki.md'
```

- add
- commit
- -m
- save
- -l
- stage


---

## Revision

In the basic committing process, what are the three states a file can be found in?

```bash
git status
working directory clean

touch README.md
# README.md is ???

git add README.md
# README.md is ???

git commit -m 'Readme'
# README.md is ???
```

- modified
- staged
- committed
- shared
- saved
