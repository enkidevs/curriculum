---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:
  
  - introduction
  - workout
  

links:

  - '[Remote Branches Official Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}'


---

# Pulling a remote branch

---
## Content

`git pull` is a command that combines `git fetch` and `git merge`.

For example, to fetch and merge the branch `master` with the current branch:
```
$ git pull origin
```
The merge is automatic, and you are unable to review the commits. For this reason, sometimes you can use `git fetch` and `git merge` instead.

There's also the `-a` (shorthand for `--append`) flag targeting the fetch part of pulling. It tells git to append new branch HEADs to the `.git/FETCH_HEAD` file instead of overwriting everything with what's remote.

---
## Practice

To `fetch` and `merge` master branch automatically you run :
```
$ ??? ??? ???
```

* `git`
* `pull`
* `origin`
* `merge`
* `checkout`

---
## Revision

To automatically `merge` the commits from the master branch you would use :
```
$ git ??? origin
```

* `pull`
* `push`
* `get`
* `merge`

---
## Quiz 

### what does the -a flag in the following command stand for?

What option related to fetching is `-a` shorthand for in the following command?

```bash
$ git pull -a
```

 ???

* --append
* --amend
* --all
* --autostash
 
