---
author: tuwidc
type: normal
category: hack
tags:
  - linux
  - terminal
  - numbering
  - lines
  - nl
revisionQuestion:
  formats:
    - type-in-the-gap
  context: relative
---

# Count non-empty lines with `nl` utility


---

## Content

If you ever need to add numbering alongside a file then `nl` is the tool for you:

```bash
echo 'line 1
> line 2
>
> line 4 '| nl
   1 line 1
   2 line 2

   3 line 4
```

The difference between `nl` and `cat -n` is that `cat -n` will count empty lines as well. 

To count empty lines with `nl` add:

```bash
echo 'line 1
> line 2
>
> line 4 '| nl -ba
   1 line 1
   2 line 2
   3
   4 line 4
```

`-ba`  stands for `--body-numbering=a` (all) .


---

## Revision

In the terminal, add numbering before a file’s content (counting only non-empty lines) :

```bash
cat enki.txt | ???
```

- `nl`
- `n1`
- `echo`
- `num`
