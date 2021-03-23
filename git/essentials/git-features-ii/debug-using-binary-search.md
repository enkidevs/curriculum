---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Debugging With Git Official
    Documentation](http://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){website}
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

# Debug using binary search


---

## Content

The `bisect` tool helps to identify the commit that introduced a bug.

To start, you need to tell git when the code last ran without problems. Assuming you are currently in a place where the code fails:

```bash
git bisect start
git bisect bad
# current commit has a bug
# checkout a known good commit
git bisect good v2.1
# v2.1 passes the test
```

git will then check out the commit that is halfway between the good and bad commits. You test the code and if there was no problem:

```bash
git bisect good
# test halfway between middle 
# and bad commit
```

If there was a problem:

```bash
git bisect bad
# test halfway between middle
# and good commit
```

You continue doing this until git identifies the first bad commit.

When you finish you need to reset to the original state:

```bash
git bisect reset
```


---

## Practice

You can flag a commit as *broken* using :

```bash
git ??? ???
```

- `bisect`
- `bad`
- `Bisect`
- `-b`


---

## Revision

```bash
git ???
```

helps finding a commit that introduced a bug using ??? search.

- `bisect`
- `binary`
- `-binary`
- `-B`
