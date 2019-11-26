---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - workout
  - deep
  
inAlgoPool: false


links:

  - '[Working With Remotes Official Documentation](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes#Pushing-to-Your-Remotes){website}'


---

# Pushing

---
## Content

**Pushing** is the way to share/push upstream your work on a remote repository.

The basic syntax of the `git push` command is:
```
$ git push [remote-name] [branch-name]
```
If you want to push all your local commits to the `origin` server on the `master` branch (both automatically named) you can use:
```
$ git push origin master
```


You can also run `git push` without arguments to push to the upstream of your current local branch. 

If, for example, you are on `feature` branch and you want to set it's upstream you need to use the `--set-upstream` flag:

```
$ git push --set-upstream origin feature
```
This will create if it doesn't already exist, a new remote branch called `feature`, and push all your changes there.

Keep in mind that the `git push` command only works if you have **write** permissions to the remote repository.

If the **history** differs from your local - due to somebody pushing changes since your last **pull** or **fetch** - your push will be rejected. To fix this, you must first `fetch`, `merge` (or just `pull`) their work. Your push will be accepted once all merging conflicts are resolved.

---
## Practice

What flag is used to set the upstream tracking branch on your current branch?

```
$ git push ??? origin feature
```


* `--set-upstream`
* `-set-upstream`
* `-a`
* `-m`
* `-up`
* `-upstream`
* `-up-branch`

---
## Revision

Complete the basic syntax for pushing in git:
```
$ git ??? ??? ???
```

* `push`
* `[remote-name]`
* `[branch-name]`
* `[local-repository]`
* `--set-upstream`
* `origin`
* `master`
* `pull`

 
