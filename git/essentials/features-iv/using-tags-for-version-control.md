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

  - '[Tagging Official Documentation](http://git-scm.com/book/en/v2/Git-Basics-Tagging){website}'


---

# Using tags for version control

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

You can list all the tags you have made in **alphabetical** order:
```
$ git tag
v0.1
v0.9
v1.5
```
If your project has hundreds of tags, you can also search for **specific** tags, for example those of version `v1.0`:
```
git tag -l "v1.0*"
v1.0.0
v1.0.1
v1.0.2
v1.0.3
```

---
## Practice

Add a `v1.0` annotated tag to the commit `ac32b10`.
```
$ git ??? ??? ??? ac32b10
```

* `tag`
* `-a`
* `v1.0`
* `-t`
* `-m`
* `commit`

---
## Revision

Complete the command to retrieve all tags that are part of `v2`:
```
$ git tag ??? ???
```

* `-l`
* `v2*`
* `2`
* `-m`

 
