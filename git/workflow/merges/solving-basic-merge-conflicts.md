---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

aspects:

  - introduction
  - workout


---

# Solving basic merge conflicts

---
## Content

Merge conflicts occur when the same part of the code has been modified in both branches.

For example, if the same line of `README.md` is edited in `fix` and `master`:
```
$ git merge fix
# conflict with README.md
# merge failed
```
The file impacted will have conflict-resolution markers (`<<<<<<<` and `>>>>>>>`) added to it by git, showing the conflicting lines (separated by `=======`). Opening `README.md` in a text editor:
```
To contact us email:
<<<<<<< HEAD
hello@enki.com
=======
help@enki.com
>>>>>>> fix
```
You have to choose the option you want or combine them manually.
.

Then run `git add` to mark the file as resolved. When you are done resolving conflicts finalize the merge with `git commit`.

---
## Practice

Solve this merge conflict.
```
$ git ??? test
# merge failed

# open testing.js to resolve issues
<<<<<<< HEAD
console.log(a);
=======
console.log(b);
>>>>>>> test

$ git ??? testing.js
```

* `merge`
* `add`
* `rm`
* `commit`

---
## Revision

How do you mark a merge conflict as resolved?
```
$ git ???
```

* `add`
* `merge`
* `rm`
* `branch`
* `commit`

 
