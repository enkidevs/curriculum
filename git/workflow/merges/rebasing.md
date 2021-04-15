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
    - type-in-the-gap
  context: standalone
---

# Rebasing


---

## Content

The `git rebase` command is a way to combine branches.

In a basic rebase, you 'replay' the changes made on one branch onto the other. For example, to rebase the changes committed to `scrollFix` onto `master`:

```bash
git checkout scrollFix
git rebase master
```

The base argument can be any one of:

- commit ID
- branch name
- a tag
- a relative reference to `HEAD`

This works by 'rewinding' `scrollFix` to the commit shared by the two branches and saving the changes in a temporary file. The `scrollFix` reference is then set to the same as `master` and the changes are applied.

To start an *interactive* rebase you use the `-i` flag:

```bash
git rebase -i branch
```

This will give you the option of modifying individual commits throughout the process instead of automatically moving the commits to a new **base**.

If you look at the history, it will seem like all the changes happened in series when they were made in parallel. Keep in mind that rebasing shouldn't be done to *public* projects as this operation can lead to terrible confusion because history is being overwritten.


---

## Practice

```bash
git rebase master
```

restores the current branch to the last ??? shared by the two branches, then ??? the changes made since then to master to the current branch.

- commit
- applies
- checkout
- deletes


---

## Revision

Complete the following snippet to achieve rebasing of the `scrollFix` branch:

```bash
# checkout to the branch ahead
git checkout scrollFix
??? ??? master
```

- `git`
- `rebase`
- `rewind`
- `redo`
- `checkout`
