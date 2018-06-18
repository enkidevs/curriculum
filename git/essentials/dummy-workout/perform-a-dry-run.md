---
author: rosielowther

levels:

  - advanced

type: normal

category: must-know

links:

  - >-
    [github.com](https://github.com/jbranchaud/til/blob/master/git/dry-runs-in-git.md){website}

---
# Perform a dry run

---
## Content

Some commands in git allow you to have a dry run. The `--dry-run` option gives a preview of the results of the command.

To check which files `-fd` will delete:
```
$ git clean -fd --dry-run
Would remove test.md
```

To check which files a commit will include (much like `git status`):
```
$ git commit --dry-run --short
M  index.html
```

---
## Practice

Preview the result of the following command:
```
$ git rm -r resources/ ???
```

* --dry-run
* remove
* delete
* --prev

---
## Revision

How do you preview the results of a command?
```
$ git clean -fd ???
```

* --dry-run
* --prev
* after
* reflog
 
