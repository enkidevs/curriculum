---
author: tuwidc
type: normal
category: feature
tags:
  - linux
  - cp
  - pv
  - progress
  - speed
  - copy
  - terminal
  - bash
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Monitor the progress of data through a pipe with `pv`


---

## Content

Use `pv` to watch the progress and speed of a `cp`:

```bash
pv my_big_file > backup/my_big_file
```

This method will lose the file's permissions and ownership. 

Files copied this way will have the same permissions as if you'd created them yourself.

In this example, `pv` outputs the file to `stdout*`, which you redirect to a file using the `>` operator. Simultaneously, it prints information about the progress to the terminal.

```bash
pv my_big_file > backup/my_big_file
 138MB 0:00:01 [73.3MB/s] [========>] 100% 
```

You may need to install `pv` package on your system.


---

## Revision

The progress and speed of copying a file can be measured using the ??? command.

- `pv`
- `cp`
- `ls`
