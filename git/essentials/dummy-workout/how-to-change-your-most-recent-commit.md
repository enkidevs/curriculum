---
author: rosielowther
levels:
  - basic
type: normal
category: must-know
aspects:
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# How to change your most recent commit


---

## Content

To make changes to your most recent commit use:

```bash
git commit --amend
```

For example, you might want to edit the name of the commit:

```bash
git commit -m 'my first comit'
git commit --amend
# editor opens
'my first commit'
```

This is also useful for when you forget to add a file. The `amend` option will use your current staging area to overwrite the previous commit:

```bash
echo "Enki" > README.md
git add README.md
git commit -m 'my first commit'
echo "Rocks" >> README.md
git add README.md
git commit --amend
# Editor
My first commit
```

The result is a single commit with message `My first commit` and changes to `README.md`:

    Enki
    Rocks

The commit with the message `my frst comit` is overridden by a new one.


---

## Practice

Alter the previous commit to correct the commit message typo

```bash
git commit -m 'Add nwe frmat'
git ???
# Editor
'Add new game format'
```

- commit --amend
- commit --undo
- commit --edit


---

## Revision

When would you use `git --amend` ?

```bash
??? 
```

- To edit the most recent commit.
- To change the content of a file.
- To notify other members of the team.
