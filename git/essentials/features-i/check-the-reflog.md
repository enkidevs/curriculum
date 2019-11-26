---
author: rosielowther

levels:

  - basic

  - medium

type: normal

category: must-know

aspects:
  
  - obscura
  - deep
 
links:

  - '[Revision Selection Official Documentation](http://git-scm.com/book/en/v2/Git-Tools-Revision-Selection){website}'

---

# Check the reflog

---
## Content

git keeps a 'reflog' for a few months. This is a record of where your HEAD and branch references have been.

To view the reflog:
```
$ git reflog
6342de7 HEAD@{0}: commit: Fix typo
2cd56ed HEAD@{1}: rebase -i (squash):
# etc
```

To see the nth previous value of HEAD:
```
$ git show HEAD@{n}
```
To see the tip of `master` at a point in history:
```
$ git show master@{2.months.ago}
```

---
## Practice

View the latest commit on master as of 3 days ago:
```
$ git ??? ???@{3.days.ago}
```

* `show`
* `master`
* `reflog`
* `log`

---
## Revision

View the 6th previous value of HEAD:
```
$ git ??? ???@{6}
```

* `show`
* `HEAD`
* `log`
* `reflog`
* `branch`

 
