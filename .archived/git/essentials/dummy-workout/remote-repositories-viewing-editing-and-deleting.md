---
author: rosielowther
levels:
  - basic
type: normal
category: must-know
aspects:
  - introduction
  - workout
  - deep
links:
  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: relative
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# Remote repositories: viewing, editing and deleting


---

## Content

**Viewing**

To list the shortnames of all the remote repositories that you have configured:

```bash
git remote
origin
```

If you use the flag `-v` you can see the URLs associated with each shortname:

```bash
git remote -v
origin https://git.enki.com (fetch)
origin https://git.enki.com (push)
```

**Editing**

To change the name of a remote repository from `ol` to `nu`:

```bash
git remote rename ol nu
```

**Deleting**

To remove a remote repository:

```bash
git remote rm nu
```


---

## Practice

How do you remove the remote repository `enki`?

```bash
???
```

- git remote rm enki
- git remote --delete enki
- git untrack enki
- git remove enki
- git delete enki


---

## Revision

Rename the remote repository `origin` to `enki`

```bash
git remote 
  ??? ??? ???
```

- rename
- origin
- enki
- amend
- old
- new
- rm
