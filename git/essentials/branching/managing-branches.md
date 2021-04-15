---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Branch Management Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Branch-Management){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Managing branches


---

## Content

If you want to see a list of your branches, you can run `git branch`:

```bash
git branch
experimental
* master
noDistractions
```

The `*` indicates the branch that is checked out. 

You can use `-v` to see the last commit on each branch.

You can use `--merged` or `--no-merged` to list the branches you have or haven't merged to the current branch:

```bash
git branch --merged
* master
noDistractions

git branch --no-merged
experimental
```


---

## Practice

Show the last commit on each branch:

```bash
git ??? ???
```

- `branch`
- `-v`
- `--merged`
- `-m`
- `commit`


---

## Revision

What does the asterisk mean?

```bash
git branch 
'*' master 
test
```

???

- `master is checked out`
- `test is merged with master`
- `master has modified files`
