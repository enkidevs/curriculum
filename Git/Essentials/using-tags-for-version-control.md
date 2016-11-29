# Using tags for version control
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: must-know

links:

  - '[git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Tagging){website}'

---
## Content

In git you can tag a certain point in history as being important. You can use this to mark a new **version**.

You can create an **annotated** tag by:
```
$ git tag -a v1.0.1 -m "Version 1.0.1"
```

Annotated tags contain useful information: the current commit checksum, your name and email, the date and the tagging message. 

You can also create a **lightweight** tag which acts just as a pointer to the current commit:
```
$ git tag v1.0.l
```
You can add a tag to an **older** commit by specifying part of its commit checksum, for example:
```
$ git tag -a v.1.0.0 4682c32
```

---
## Practice

What is the flag needed to create an annotated tag?
```
$ git tag ???
```
* `-a`
* `-t`
* `-m`

---
## Revision

Add a `v1` annotated tag to the commit `ac32b10`.
```
$ git ??? ??? ??? ac32b10
```
* `tag`
* `-a`
* `v1`
* `-t`
* `-m`
* `commit`