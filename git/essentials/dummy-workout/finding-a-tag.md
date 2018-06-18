---
author: rosielowther

levels:
  - basic
  - medium

type: normal

category: must-know

parent: using-tags-for-version-control

links:

  - '[git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Tagging){website}'

---
# Finding a tag

---
## Content

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

Find a tag that includes `"fix"` :
```
$ git tag ??? ???
```
* -l
* '"fix"'
* --fix
* -m

---
## Revision

Search for all the tags of version 2 :
```
$ git tag ??? ???
```
* -l
* v2*
* 2
* -m
 
