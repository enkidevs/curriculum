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
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Search by commit message keyword


---

## Content

There is a useful **log output** filter that you can use to help find a particular commit. 

You can search by **keyword** by using the `--grep` option.

This will produce a list of commits that have the keyword in their commit message.

For example:

```bash
git log --pretty=format:"%h: %s" 
  --grep=README
4310c3a: Altered README content
cb41c9b: Added README
```


---

## Practice

Search for all commits with 'enki' in their commit message :

```bash
git ??? ??? 
```

- `log`
- `--grep=enki`
- `--grep`
- `'enki'`
- `-m`


---

## Revision

What does this code do?

```bash
git log --pretty=oneline --grep=enki
 
```

???

- Shows the commit messages with 'enki'.
- Shows the commits by author 'enki'.
- Shows the commits in 'enki' repository.
