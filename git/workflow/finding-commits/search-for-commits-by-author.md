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

  - '[Viewing The Commit History](http://git-scm.com/book/en/v2/Git-Basics-Viewing-the-Commit-History){documentation}'


---

# Search for commits by author

---
## Content

You can search for commits that were made by a particular author by using the `--author` option. 

This produces a filtered **log output** containing only the commits made by that author.

For example:
```
$ git log --pretty=format:"%h: %s" 
  --author=enki 
bc15f3c: Fix scrolling bug
b423c5d: New game format
f75e351: Change insight layout
```

---
## Practice

Search for the commits made by "enki" or "Joe".
```
$ git log ???="???\|Joe"
```

* `--author`
* `enki`
* `--pretty`
* `-m`
* `--name`

---
## Revision

Search for the commits made by "C Mustard".
```
$ git ??? ???="C Mustard"
```

* `log`
* `--author`
* `--pretty`
* `format`
* `--name`

 
