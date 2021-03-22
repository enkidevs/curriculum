---
author: catalin
type: normal
category: tip
tags:
  - workout
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Retrieve previous arguments


---

## Content

If you want the last argument only, use `!$` syntax:

```bash
mkdir /documents/enki
cd !$
cd /documents/enki
```

In case you need more than 1 argument, use:

```bash
cat chapter1.txt chapter2.txt
 ...
ls !:1-2
ls chapter1.txt chapter2.txt

ls !:2
ls chapter2.txt
```

If you are looking for an argument that was used before the last command, press **Alt + .** (as in hold Alt and press period) . Pressing it multiple times will cycle through past arguments:

```bash
mkdir /documents/enki
cat chapter1.txt

ls 
# Alt + .
ls chapter1.txt
# Alt + .
ls /documents/enki
```


---

## Practice

Which argument will be retrieved after pressing *Alt + .* **twice**?

```bash
cd /documents/enki
cat chapter1.txt chapter2.txt

rm ???
```

- `/documents/enki`
- `chapter2.txt`
- `chapter1.txt`
- `chapter1.txt chapter2.txt`


---

## Revision

You can use ??? syntax to repeat the last command's argument.

- `!$`
- `!!`
- `!1`
