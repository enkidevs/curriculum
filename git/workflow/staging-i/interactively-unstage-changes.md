---
author: rosielowther

levels:

  - medium

type: normal

category: must-know

aspects:

  - workout
  - deep

links:

  - '[Git Reset](https://git-scm.com/docs/git-reset){documentation}'
  - '[Git Add](https://git-scm.com/docs/git-add){documentation}'

parent: interactively-stage-patches

---

# Interactively unstage changes

---
## Content

In the same way that you can interactively stage changes, you can interactively unstage changes using `git reset` with the `--patch` option.

For a single file:
```
$ git reset --patch experiment.md
```
For the whole repository:
```
$ git reset --patch
```
You then decide what you want to do with each *hunk* (couple of lines of changed code) by selecting one of the options:
```
diff --git a/README b/README
index 8b73642..3a0923c 100644
@@ -12,13 +12,14
-Project description
+Process description

-This is the project description.
+This is the process description.
+Here are some pictures.
Unstage this hunk[y,n,q,a,d,/,K,j,J,g,e,?]?
```
The hunk above contained the first 2 line changes in the *README* file. You will be presented with a new *hunk* until you have gone through all the changes.

---
## Practice

What does this command do?
```
$ git reset --patch enki.md
```
???

* interactively removes changes made to `enki.md`
* restores `enki.md` to the last version
* untracks enki.md

---
## Revision

Interactively unstage some of the changes made to `enki.md`.
```
$ git reset ??? ???
```

* `--patch`
* `enki.md`
* `-patch`

 
