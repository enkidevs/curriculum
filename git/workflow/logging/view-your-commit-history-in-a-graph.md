---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Git
    Basics](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# View your commit history in a graph


---

## Content

If you want to see a visual representation of your branching and merging, you can use the `--graph` option of `git log`.

Combined with `--pretty` it produces a nicer output:

```bash
git log --pretty=format:"%h %s" --graph
* fe341a0 Change game colours 
*  5e3ee11 Merge branch master
|\
| * 420eac9 Add new game style
* | e34f120 Fix typo in index.html
|/
* ab56e1c Update README
```


---

## Revision

To see a visual representation of the project’s branching, you would use:

```bash
git ??? ???
```

- `log`
- `--graph`
- `-graph`
- `--log`
