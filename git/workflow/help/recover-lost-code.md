---
author: rosielowther
type: normal
category: must-know
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

# Recover lost code


---

## Content

If you have committed or pushed your code anywhere, then in most cases it is not lost for good.

To check the reflog:

```bash
git reflog
```

If the lost commit is there, you can retrieve it using its checksum:

```bash
git branch myBranch ca3df45
```

Then you can merge this into your current branch.

To search for orphan commits[1]:

```bash
git fsck --full
```

Again you can merge a commit into your current branch.


---

## Practice

Create a `newBranch` that has the `ba23fe1` commit as the starting point:

```bash
git ??? ??? ba23fe1
```

- `branch`
- `newBranch`
- `temp`
- `log`
- `reflog`
- `master`


---

## Revision

Check the reflog :

```bash
git ??? ???
```

- `reflog`
- `-g`
- `-m`
- `-l`


---

## Footnotes

[1:orphan commits]
Orphan commits are just commits that get lost in various scenarios. One such example would be running `git reset --hard HEAD^`.
