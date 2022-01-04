---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Double Dot
    Syntax](http://git-scm.com/book/en/v2/Git-Tools-Revision-Selection){documentation}
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

# Specify a range of commits using double dot syntax


---

## Content

The double dot syntax specifies all commits that you can reach from one branch but not another, i.e. unmerged commits.

For example to see the commits on `test` that are not on `master`:

```bash
git log master..test
de23f12 Add new game style
fe67de1 Edit game list
```

You can use this to see what you're going to push to a remote:

```bash
git log origin/master..HEAD
```

This will show the commits that are on your current branch but not on the remote.


---

## Practice

In order to see the commits that are on `awesomeFeature` branch but not on `master`, you have to run:

```bash
git ??? ??? ??? ???
```

- `log`
- `master`
- `..`
- `awesomeFeature`
- `.`
- `test`


---

## Revision

```bash
git log origin/master..HEAD
```

shows ??? that are on the ??? branch, but not on ??? .

- commits
- current
- master
- main
- snippets
