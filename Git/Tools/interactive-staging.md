# Interactive staging
author: rosielowther

levels:

  - medium

type: normal

category: must-know

links:

  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Tools-Interactive-Staging){website}

---
## Content

To stage a file interactively, use the `-i` or `--interactive` option:
```
$ git add -i
```
This will open an interactive shell. It will show your staged and unstaged files and present a list of commands.

To stage a file type `2` and hit **Enter**:
```
What now > 2
       staged     unstaged path
  1: unchanged    +0/-1 README
  2: unchanged    +1/-1 index.html
Update > 1
# selects README to be staged
       staged     unstaged path
* 1: unchanged    +0/-1 README
  2: unchanged    +1/-1 index.html
Update > 
# hitting Enter stages README
```

---
## Practice

To stage `enki.md`, you would press
```
What now > 2
       staged     unstaged path
  1: unchanged    +0/-1 index.md
  2: unchanged    +1/-1 enki.md
Update > ???
       staged     unstaged path
  1: unchanged    +0/-1 index.md
|*2: unchanged    +1/-1 enki.md
```
*`2`
*`enki.md`
*`stage`

---
## Revision

Open the interactive shell for staging files:
```
$ git add ???
```
*`-i`
*`i`
*`-shell`