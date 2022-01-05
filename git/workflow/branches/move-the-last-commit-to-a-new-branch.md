---
author: rosielowther
type: normal
category: hack
links:
  - '[Git Reset](https://git-scm.com/docs/git-reset){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Move the Last Commit to a New Branch


---

## Content

If you commit to the current branch when instead you wanted to commit to a new branch, you can easily correct your mistake.

For example, if you made your commit to `branch1` but wanted instead to commit to `branch2`:

```bash
# you're currently on branch1
# and the last commit was a mistake
# to reset branch1 to state right
# before the last commit, do:
git reset HEAD~

# now you can move those changes
# onto a new branch
# first let's create the branch
git branch branch2
# then we can move the changes
git checkout branch2
# now you can safely commit to
# the intended branch2
git add .
git commit -m 'fixed'
```


---

## Practice

Run the commands in the correct order such that the last commit from current branch is moved to a new branch called `bug-fix`:

```plain-text
???
???
???
???
???
```

- `git reset HEAD~`
- `git branch bug-fix`
- `git checkout bug-fix`
- `git add .`
- `git commit -m 'enki lesson'`


---

## Revision

A quick trick to undo the last commit added to the current branch is

???

- `git reset HEAD~`
- `git reverse HEAD~`
- `git reset HEAD-1`
- `git undo last commit`
