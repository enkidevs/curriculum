---
author: rosielowther
type: normal
category: must-know
links:
  - >-
    [Revision Selection Official
    Documentation](http://git-scm.com/book/en/v2/Git-Tools-Revision-Selection){website}
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

# Check the reflog


---

## Content

git keeps a 'reflog' for a few months. This is a record of where your HEAD and branch references have been.

To view the reflog:

```bash
git reflog
6342de7 HEAD@{0}: commit: Fix typo
2cd56ed HEAD@{1}: rebase -i (squash):
# etc
```

To see the nth previous value of HEAD:

```bash
git show HEAD@{n}
```

To see the tip of `master` at a point in history:

```bash
git show master@{2.months.ago}
```


---

## Practice

View the latest commit on master as of 3 days ago:

```bash
git ??? ???@{3.days.ago}
```

- `show`
- `master`
- `reflog`
- `log`


---

## Revision

View the 6th previous value of HEAD:

```bash
git ??? ???@{6}
```

- `show`
- `HEAD`
- `log`
- `reflog`
- `branch`
