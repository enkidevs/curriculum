---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Undoing Things Official
    Documentation](http://git-scm.com/book/en/v2/Git-Basics-Undoing-Things){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# How to unstage a staged file


---

## Content

If you mistakenly stage a file and want to 'undo' this operation, you can use `git reset`.

For example:

```bash
git add *
# mistakenly staged all files
git reset HEAD README.txt
# unstaged README.txt 
```

You can use `git status` for prompts on unstaging.


---

## Practice

What do these commands do?

```bash
git add enki.md games.md
git reset 
```

???

- Unstage enki.md and games.md
- Unstage games.md
- Delete enki.md and games.md


---

## Revision

Undo the command that staged `index.html` :

```bash
git add index.html
git ??? HEAD index.html
```

- `reset`
- `remove`
- `amend`
