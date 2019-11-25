---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction

links:

  - '[Git Commit History Official Documentation](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){website}'


---

# What is stored in a commit?

---
## Content

When you make a commit, git stores a commit object.

You can view the information stored in the commit objects for that repository by using `git log`. For example:
```
$ git log
commit bc01a6
Author: C Mustard <cmustard@enki.com>
Date:   Mon Jan 25 09:41:11 2016 +0000
    changed content of README
```
The commit object contains a checksum, the author's name and email, the commit message, and a pointer to the commit that came before it (or multiple commits).

---
## Revision

The usual commit object contains a hash-code, author’s name and email, date and ??? .

* description
* SHA-1
* checksum

 
