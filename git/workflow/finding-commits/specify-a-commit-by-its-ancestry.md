---
author: rosielowther
type: normal
category: feature
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Specify a Commit by Its Ancestry


---

## Content

To show a commit's first parent use `^` or `~`, both achieving the same thing:

```bash
git show 34de6f1^
# or
git show 34de6f1~
```

To show the second parent of a merge commit:

```bash
git show df23e42^2
# shows parent commit on the branch
# you merged in
```

To show the grandparent of commit `34de6f1`:

```bash
git show 34de6f1^^
# or
git show 34de6f1~2
```


---

## Practice

What is the `~` equivalent of `^^^^`?

???

- `~4`
- `~3`
- `~2`


---

## Revision

The command:

```bash
git show 42ea31d^
```

Gets the ??? of commit `42ea31d`.

- `parent`
- `grandparent`
- `child`


---

## Quiz

### how can you access the forth commit in this sequence?


Say you've got the following commit tree:

```bash
A--B--C--D--E--HEAD.
```

Which of the following refers to the commit labeled with D?

???

- `HEAD~~`
- `HEAD^2`
- `HEAD^1`
- `HEAD~1`
