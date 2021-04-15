---
author: catalin
type: normal
category: how-to
links:
  - >-
    [Rewriting Git
    History](https://www.atlassian.com/git/tutorials/rewriting-history){website}
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Modifying a Previous Commit


---

## Content

Forgot something in your last **commit**?

No problem, **Git** provides an easy way to update your last commit: the `--amend` flag of the `git commit` command.

Suppose you staged some changes and then committed them:

```bash
git commit -m "my commit"
```

If you forgot to add some changes, you can stage them normally:

```bash
git add path/to/my/new/file.txt
```

Now, to update your last commit just run:

```bash
git commit --amend -m "my updated commit"
```

Voila, the commit has been updated. Without  the `add` step, the command will only change the commit's message. 

Keep in mind that updating a commit will trigger a change in its `ID` as well. Effectively, you are creating a new commit that replaces the old one.

To get a file to the state it was when you last committed you can also use the following command:

```bash
git checkout -- file.txt
```

Running this, you'll be copying a "new" file that overwrites the target file, losing any uncommitted changes.


---

## Revision

What flag is used to modify your last commit ?

```bash
git commit ???
```

- `--amend`
- `--undo`
- `--update`
- `-m`
- `-a`
