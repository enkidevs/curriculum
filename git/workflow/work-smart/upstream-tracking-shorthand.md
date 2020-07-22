---
author: rosielowther
type: normal
category: hack
links:
  - >-
    [Tracking Branches Official
    Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches#_tracking_branches){website}
---

# Upstream (tracking) shorthand


---

## Content

You can reference an upstream tracked branch with the `@{upstream}` or `@{u}` shorthand. 

For example:

```bash
git checkout master
git merge origin/master
```

can be replaced by:

```bash
git checkout master
git merge @{u}
```


---

## Practice

`@{u}` refers to ??? in the following snippet:

```bash
git checkout myBranch
git merge @{u}
#upstream equivalent of myBranch
```

- origin/myBranch
- myBranch
- origin/master


---

## Revision

`@{u}` is used to reference the 

???

- upstream tracked branch
- downstream tracked branch
- master branch
