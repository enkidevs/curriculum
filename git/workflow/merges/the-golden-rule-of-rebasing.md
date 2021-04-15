---
author: rosielowther
type: normal
category: best-practice
links:
  - >-
    [Git Rebasing Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Rebasing){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The golden rule of rebasing


---

## Content

Rebasing is the process of modifying the base commit from which a series of commits stems. This is achieved with the `git rebase` command. Rebasing is an alternative to **merging** when wanting to combine two different branches of development.

> **Only rebase commits that exist in your local repository.** 

You should stick to this rule so that other people contributing to the project do not end up with a confusing history when you rebase something they have based their code on. 

If someone does rebase shared commits, you can run:

```bash
git pull --rebase
```

so git will attempt to work out a simple history.


---

## Practice

How would you make git to recreate a history of commits if someone rebased shared commits?

```bash
git ??? ???
```

- `pull`
- `--rebase`
- `rebase`
- `commit`


---

## Revision

The best practice is to only `rebase` commits that exist in your ??? ???.

- local
- repository
- remote
