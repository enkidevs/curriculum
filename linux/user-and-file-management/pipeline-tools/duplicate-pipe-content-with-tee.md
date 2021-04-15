---
author: catalin
type: normal
category: how-to
tags:
  - workout
links:
  - '[en.wikipedia.org](https://en.wikipedia.org/wiki/Tee_(command)){website}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: relative
---

# Duplicate pipe content with `tee`


---

## Content

To duplicate the content while piping you can use the `tee` utility. 

One straightforward and useful example is that `tee` can be used to write to multiple files at the same time.

The command to achieve this is:

```bash
ps | tee fileone filetwo filethree
```

The output of the `ps` command is now inside three different files.

To append data to files, the `-a` flag must be used:

```bash
ps | tee -a fileone filetwo 
          filethree
```


---

## Practice

Print the output of `ls` command in two files:

```bash
??? ??? ??? fileone filetwo
```

- `ls`
- `|`
- `tee`
- `ps`
- `pipe`
- `>>`
- `>`
- `<`


---

## Revision

Print the output of `ls` command in two files using `tee`:

```bash
??? ??? ??? fileone filetwo
```

- `ls`
- `|`
- `tee`
- `ps`
- `pipe`
- `>>`
- `>`
- `<`
