---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Viewing The Commit
    History](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}
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

# Search for commits by author


---

## Content

You can search for commits that were made by a particular author by using the `--author` option. 

This produces a filtered **log output** containing only the commits made by that author.

For example:

```bash
git log --pretty=format:"%h: %s" 
  --author=enki 
bc15f3c: Fix scrolling bug
b423c5d: New game format
f75e351: Change insight layout
```


---

## Practice

Search for the commits made by "enki" or "Joe".

```bash
git log ???="???\|Joe"
```

- `--author`
- `enki`
- `--pretty`
- `-m`
- `--name`


---

## Revision

Search for the commits made by "C Mustard".

```bash
git ??? ???="C Mustard"
```

- `log`
- `--author`
- `--pretty`
- `format`
- `--name`
