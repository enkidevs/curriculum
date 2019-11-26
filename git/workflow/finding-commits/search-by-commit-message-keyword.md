---
author: rosielowther

levels:

  - advanced

type: normal

category: must-know

aspects:

  - introduction
  - workout

links:

  - '[Viewing The Commit History](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}'


---

# Search by commit message keyword

---
## Content

There is a useful **log output** filter that you can use to help find a particular commit. 

You can search by **keyword** by using the `--grep` option.

This will produce a list of commits that have the keyword in their commit message.

For example:
```
$ git log --pretty=format:"%h: %s" 
  --grep=README
4310c3a: Altered README content
cb41c9b: Added README
```

---
## Practice

Search for all commits with 'enki' in their commit message :
```
$ git ??? ??? 
```

* `log`
* `--grep=enki`
* `--grep`
* `'enki'`
* `-m``

---
## Revision

What does this code do?
```
$ git log --pretty=oneline --grep=enki
 
```
???

* Shows the commit messages with 'enki'.
* Shows the commits by author 'enki'.
* Shows the commits in 'enki' repository.

 
