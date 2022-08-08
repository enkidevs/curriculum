---
author: rosielowther
type: normal
category: how-to
links:
  - >-
    [Untrack A File Without Deleting
    It](https://github.com/jbranchaud/til/blob/master/git/untrack-a-file-without-deleting-it.md){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Untrack a directory/file without deleting it


---

## Content

To delete a file from your project in git you use `git rm`.

However, if you only want to remove the file from the index but not the working directory, use instead:

```bash
git rm --cached myFile
# untrack myFile
```

You can do the same for a directory:

```bash
git rm --cached -r myDirectory
# untrack myDirectory
```


---

## Practice

Untrack the directory `experiment` :

```bash
git ??? ??? ??? experiment
```

- `rm`
- `--cached`
- `-r`
- `-m`
- `-t`


---

## Revision

What is the flag to remove a file from cache, but not from the working directory?

```bash
git rm ??? enki.html
```

- `--cached`
- `-d`
- `-m`
- `--index`
