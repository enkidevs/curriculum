---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:

  - deep
  - workout


links:

  - '[Limiting Log Output](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}'


---

# Limiting log output by time

---
## Content

By default `git log` shows the whole commit history, with the most recent commit first.

You can limit this output to a specific time period by using `--since/--after` and `--until/--before`. 

For example, to show commits in the past month:
```
$ git log --since="last month"
```
Many different formats are accepted, for example relative dates ("3 hours ago"), ISO 8601 and RFC 2822 formats, and "YYYY-MM-DD".

---
## Practice

Show the commits between 01/01/2016 and 05/01/2016 (DD/MM/YYYY) :
```
$ git ??? 
    --???="2016-01-01" 
    --???="2016-01-05"
```

* `log`
* `after`
* `before`
* `start`
* `end`

---
## Revision

Show the commits made today :
```
$ git ??? ???
```

* `log`
* `--since="yesterday"`
* `--pretty`
* `--since`
* `"yesterday"`

 
