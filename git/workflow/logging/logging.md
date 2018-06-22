---
author: catalin

levels:

  - beginner

type: normal

category: how to




---

# Logging

---
## Content

To explore your project's history, **Git** provides a logging tool as the `git log` command:
```
$ git log
# shows current branch commit history
```

Unlike `git status` which displays information about the state of the working tree and the index, `git log` returns only with **committed** history.

The **Git** `log` command supports a plethora of filters, making the search through history highly flexible and customizable.

If you want to see a specific numbers of commits, use the `-n` flag followed by a number:
```
$ git log -n 4
# shows 4 commits
```

To display each commit on just one line, you can use this flag:
```
$ git log --oneline
```

Additional stats such as files changed or number of lines added can be displayed with the `--stat` flag:
```
$ git log --stat
```

You can also filter the commits by their author (Regular Expressions work here):
```
$ git log --author="myUserName"
```

To search through the commit messages, use the `--grep` flag with either the search string or a regular expression:
```
$ git log --grep="\S+@\S+"
```

You can also specify search ranges with the following syntax:
```
$ git log <since>..<until>
```

The `<since>` and `<until>` fields should be **revision references** such as commit ids, branch names, `HEAD` etc.

---
## Practice

Log 5 commits:
```
$ git ??? ??? ???
```

* `log`
* `-n`
* `5`
* `--stat`
* `--show`
* `--commits`
* `all`
* `just`
* `show`
* `status`

---
## Revision

What flag of `git log` would you use to show commits on one line?

```
$ git log ???
```


* `--oneline`
* `one`
* `-o`
* `--pretty`
* `-n`

 
