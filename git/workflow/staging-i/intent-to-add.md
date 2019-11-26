---
author: rosielowther

levels:

  - advanced

type: normal

category: feature

aspects:

  - workout
  - deep


links:

  - '[Intent To Add](https://github.com/jbranchaud/til/blob/master/git/intent-to-add.md){website}'


---

# Intent to add

---
## Content

You can use the `-N` flag to show that you are going to track a file in the future:
```
$ git add -N file.txt
```
Once git knows you are intending to add the untracked file, you can use commands like `git diff` on the file without any problems, as well as commit it using `git commit -a`.

---
## Practice

Show that you intend to track `enki.md` :
```
$ git ??? ??? enki.md
```

* `add`
* `-N`
* `-n`
* `stage`
* `track`

---
## Revision

Which flag specifies the *intention* to add a file in the future?
```
$ git add ???
```

* `-N`
* `-n`
* `-A`
* `-a`
* `-m`

 
