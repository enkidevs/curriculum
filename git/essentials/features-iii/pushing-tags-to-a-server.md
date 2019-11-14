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

parent: using-tags-for-version-control

---

# Pushing tags to a server

---
## Content

The `git push` command doesn’t automatically transfer your tags to the remote server. 

You have to push a tag that you want to share by running `git push remote [tagname]`. 

For example:
```
$ git push origin v1.1.0
```
You can use the `--tags` option to push all of your tags to the remote server that are not already there.
```
$ git push origin --tags
```

---
## Practice

Transfer all your tags to the remote  `origin` server :
```
$ git ??? ??? ???
```

* `push`
* `origin`
* `--tags`
* `master`
* `v1.0`
* `-m`

---
## Revision

What does this command do?
```
$ git push enki v1.2
 
```
???

* Pushes tag `v1.2` to the remote `enki`
* Pushes tag `enki` to the remote `v1.2`
* Pushes tag ` enki v1.2` to `origin`

 
