---
author: catalin
type: normal
category: must-know
links:
  - >-
    [Recording Changes To The
    Repository](https://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository){website}
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

# Tracking and Staging files


---

## Content

You can easily check the status of your files inside a **Git** project with the `git status` command:

```bash
git status
# On branch master
# Your branch is up-to-date with
# 'origin-master'.
# nothing to commit, working directory
# clean
```

The message in the code snippet above is shown when there are no *tracked* and *modified* files.

Let's suppose you add `enki.txt` to your project. Running the same command you will see a different result:

```bash
git status
# On branch develop
# You branch ...
# Untracked files:
#     enki.txt
# nothing added to commit ...
```

You can see that the `enki.txt` file is **untracked**. In order for **Git** to manage changes in this file (track it) you must use the `git add` command:

```bash
git add enki.txt
```

In case you need to add more than a single file, naming them one by one isn't going to work out. Here are your options for adding multiple files:

```bash
# stages everything
git add [-A|--all]
git add .
# stages everything but new files
git add [-u|--update]
```

Running `git status` again, we can see that the file is now **staged** and ready to be part of a **commit**:

```bash
git status
# ...
# Changes to be committed:
#    new file:    enki.txt
```


---

## Practice

What's the command that will add all the files in the current directory to the staging area?

```bash
git ??? ???
```

- `add`
- `.`
- `stage`
- `commit`
- `status`
- `-a`


---

## Revision

What git command can be used to check what files are untracked, modified or staged?

```bash
git ???
```

- `status`
- `checkout`
- `stats`
- `add`
- `branch`
- `list`
