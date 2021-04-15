---
author: rosielowther
type: normal
category: feature
links:
  - >-
    [Intent To
    Add](https://github.com/jbranchaud/til/blob/master/git/intent-to-add.md){website}
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

# Intent to add


---

## Content

You can use the `-N` flag to show that you are going to track a file in the future:

```bash
git add -N file.txt
```

Once git knows you are intending to add the untracked file, you can use commands like `git diff` on the file without any problems, as well as commit it using `git commit -a`.


---

## Practice

Show that you intend to track `enki.md` :

```bash
git ??? ??? enki.md
```

- `add`
- `-N`
- `-n`
- `stage`
- `track`


---

## Revision

Which flag specifies the *intention* to add a file in the future?

```bash
git add ???
```

- `-N`
- `-n`
- `-A`
- `-a`
- `-m`
