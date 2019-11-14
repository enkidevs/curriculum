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

  - '[Remote Branches Official Documentation](http://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}'


---

# Pushing to a remote branch

---
## Content

If you want to share a branch, you have to push it to the remote. 

To do this, you run `git push <remote> <branch>`. For example, to push a fix:
```
$ git push origin scrollFix
```
If you want to push a local branch into a remote branch but call it by a different name, you can use this format:
```
$ git push origin scrollFix:uiFix
```

---
## Practice

Share a branch `test` with the remote `origin` :
```
$ git ??? ??? ???
```

* `push`
* `origin`
* `test`
* `master`
* `branch`
* `commit`

---
## Revision

Push the branch `test` to the remote under the name `fix` :
```
$ git push origin
         ???:???
```

* `test`
* `fix`
* `rename`

 
