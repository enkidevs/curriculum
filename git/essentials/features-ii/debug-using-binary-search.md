---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

aspects:
  
  - workout
  - deep
  - obscura
  

links:

  - '[Debugging With Git Official Documentation](http://git-scm.com/book/en/v2/Git-Tools-Debugging-with-Git){website}'


---

# Debug using binary search

---
## Content

The `bisect` tool helps to identify the commit that introduced a bug.

To start, you need to tell git when the code last ran without problems. Assuming you are currently in a place where the code fails:
```
$ git bisect start
$ git bisect bad
# current commit has a bug
# checkout a known good commit
$ git bisect good v2.1
# v2.1 passes the test
``` 
git will then check out the commit that is halfway between the good and bad commits. You test the code and if there was no problem:
```
$ git bisect good
# test halfway between middle 
# and bad commit
```
If there was a problem:
```
$ git bisect bad
# test halfway between middle
# and good commit
```
You continue doing this until git identifies the first bad commit.

When you finish you need to reset to the original state:
```
$ git bisect reset
```

---
## Practice

You can flag a commit as *broken* using :
```
$ git ??? ???
```

* `bisect`
* `bad`
* `Bisect`
* `-b`

---
## Revision

```$ git ???``` 

helps finding a commit that introduced a bug using ??? search.

* `bisect`
* `binary`
* `-binary`
* `-B`

 
