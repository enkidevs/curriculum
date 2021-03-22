---
author: rosielowther
type: normal
category: feature
links:
  - '[Git Clean](https://git-scm.com/docs/git-clean){documentation}'
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

# Delete all untracked files


---

## Content

Use `git clean` to remove untracked files from your local repository.

To delete untracked files in the current directory:

```bash
git clean -f
```

To remove untracked directories:

```bash
git clean -f -d
```

You also can clean the working directory interactively by using the `-i` flag:

```bash
git clean -f -i
```

You can use `-n` to have a dry-run of the operation and display the results without actually deleting anything.


---

## Practice

Remove the untracked files in your current directory :

```bash
git ??? ???
```

- `clean`
- `-f`
- `-m`
- `rm`
- `delete`


---

## Revision

Remove the untracked directories in your local repository :

```bash
git ??? -f ???
```

- `clean`
- `-d`
- `-m`
- `rm`
- `delete`
