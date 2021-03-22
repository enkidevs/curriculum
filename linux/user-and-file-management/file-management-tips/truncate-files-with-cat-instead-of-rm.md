---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - truncate
  - files
  - null
  - rm
  - touch
  - workout
notes: ''
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Truncate files with `cat` instead of `rm`


---

## Content

Since `cat` enables us to preserve file ownership and permissions it is preferable to truncate files with:

```bash
cat /dev/null > file
# deletes the contents of the file
```

Rather than:

```bash
sudo rm file && touch file
# removes the file and creates
# a new one
```

`cat /dev/null` helps with *clearing log files* as well.


---

## Revision

Delete the *contents* of `old_log_file` :

```bash
??? ??? > ???
```

- `cat`
- `/dev/null`
- `old_log_file`
- `touch`
- `rm`
