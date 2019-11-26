---
author: rosielowther

levels:

  - basic

  - medium

  - beginner

type: normal

category: must-know

aspects:

  - workout
  - deep

links:

  - '[Short Status](http://git-scm.com/book/en/v2/Git-Basics-Recording-Changes-to-the-Repository){documentation}'


---

# Use `short` status to make output more compact

---
## Content

You can use the option `-s` or `--short` to get a simplified status output.

For example:
```
$ git status --short
  M README
M   LICENSE
A   CONTRIBUTING
??  emoji.png
```
`M` means that the file has been modified. If the `M` letter is in the right hand column it has not been staged, if it is in the left hand column it has been.

`??` means that a new file has been created and is not yet tracked.

`A` describes a new file that has been staged.

---
## Practice

What does this tell us about the file `enki.md`?
```
$ git status --short
M  enki.md
 M hello.md
```
???

* `enki.md` is modified and staged
* `enki.md` is modified and not staged
* `enki.md` is a new untracked file
* `enki.md` is a new staged file

---
## Revision

What is the option to get a simplified status output?
```
$ git status ???
```

* `-s`
* `--compact`
* `-v`
* `--long`

 
