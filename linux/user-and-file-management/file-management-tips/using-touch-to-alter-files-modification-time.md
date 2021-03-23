---
author: tuwidc
type: normal
category: how-to
tags:
  - linux
  - touch
  - timestamp
  - date
  - alter
  - workout
  - introduction
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Using `touch` to alter files modification time

---

## Content

You can change the modification time of a file using the touch command:

```bash
touch filename
```

By default, this will set the file's modification time to the current time. However, there are a number of flags, such as the `-d` flag to pick a particular date.

For example, to set a file as being modified two hours before the present:

```bash
touch -d "2 hours ago" filename
```

If you want to modify the file relative to its existing modification time instead:

```bash
touch -d "$(date -r file) - 2 hours" file
```

This might not work on BSD systems.

---

## Practice

Set the modification time of `enki.txt` to be 5 minutes ago :

```bash
??? ??? ???
    enki.txt
```

- `touch`
- `-d`
- `"5 minutes ago"`
- `5`
- `-r`
- `set`

---

## Revision

You can alter the modification or the access time of a file using the ??? command .

- touch
- alter
- set
