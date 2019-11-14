---
author: rosielowther

levels:

  - medium

type: normal

category: feature

aspects:
  
  - obscura
  

links:

  - '[Git Tools - Revision Selection](http://git-scm.com/book/en/v2/Git-Tools-Revision-Selection){website}'


---

# Revision tools

---
## Content

To specify a range of commits that can be reached by different branches you can use `^`, `--not`, double dots (`..`) and triple dots (`...`).

These are equivalent:
```
$ git log master..tests
$ git log ^master tests
$ git log tests --not master
# shows commits on the tests
# branch that are not on master
```
Triple dots are used to show commits that are in one branch but not in both:
```
$ git log master...tests
# shows all commits that aren't
# shared history
```

---
## Practice

```
$ git log master...myBranch
```
Would print commits that

???


* Are in either one of them, but not in both
* Are in master, but not in myBranch
* Are in myBranch, but not in master
* Are in both of them

---
## Revision

```
$ git log ^master myBranch
```
Is equivalent to

???


* `git log master..myBranch`
* `git log master...myBranch`
* `git log --not master myBranch`

---
## Quiz 

### how can you specify a range of commits?

Consider the following git history

```bash
*--*--*--A--*--*--*--B--*
```

Which of the following commands should be used to log all commits between A and B (inclusive)?


 ???

* git log A~..B
* git log A..B
* git log A…B
* git log ^A B
 
