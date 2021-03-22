---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Interactive
    Staging](http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging){documentation}
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

# Interactive staging


---

## Content

To stage a file interactively, use the `-i` or `--interactive` option:

```bash
git add -i
     staged     unstaged path
  1: unchanged    +0/-1 README
  2: unchanged    +1/-1 index.html
*** Commands ***
1:status 2:update 3:revert 4:add untracked
5:patch 6:diff 7:quit 8:help
What now >
```

This will open an interactive shell. It will show your staged and unstaged files and present a list of commands.

To stage a file type `2` and hit **Enter**:

```bash
What now > 2
staged     unstaged path
1: unchanged    +0/-1 README
2: unchanged    +1/-1 index.html
```

You have now selected the `update` command. All is left to do is stating the index of the file you are looking to stage. To choose the **README** file, type *1*:

```plain-text
Update > 1
       staged     unstaged path
* 1: unchanged    +0/-1 README
  2: unchanged    +1/-1 index.html
Update >
# hitting Enter again stages README
```


---

## Practice

To stage `enki.md`, you would press

```plain-text
What now > 2
       staged     unstaged path
  1: unchanged    +0/-1 index.md
  2: unchanged    +1/-1 enki.md
Update > ???
       staged     unstaged path
  1: unchanged    +0/-1 index.md
|*2: unchanged    +1/-1 enki.md
```

- `2`
- `enki.md`
- `stage`


---

## Revision

Open the interactive shell for staging files:

```bash
git add ???
```

- `-i`
- `i`
- `-shell`
