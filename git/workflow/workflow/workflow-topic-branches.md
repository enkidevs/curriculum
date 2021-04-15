---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Git Branching Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Branching-Workflows){documentation}
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

# Workflow: topic branches


---

## Content

A topic branch is a branch that you create and use for work on a feature.

The idea is to work on a fix or an experiment separately from the `master` branch. This makes it easier to review changes, as all the commits related to one topic.

For example, you could work on solving an issue:

```bash
git checkout -b iss14
# checkout as a new branch "iss14"
# fix the issue
```

Once you have solved the problem you can merge it into the master branch:

```bash
git checkout master
git merge iss14
# merge the fix
```

Then you can delete the topic branch:

```bash
git branch -d iss14
```


---

## Practice

Create a new branch :

```bash
git ??? ??? newFeature
```

- `checkout`
- `-b`
- `branch`
- `-d`


---

## Revision

A way of keeping the master branch clean and safely experimenting is by using ??? .

- branches 
- merges
- IDEs
