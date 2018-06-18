---
author: rosielowther

levels:

  - basic

type: normal

category: must-know

links:

  - >-
    [git-scm.com](http://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}

---
# Remote repositories: fetching and pushing

---
## Content

If you are collaborating on a project stored in a remote repository, you will need to share and receive changes.

**Fetching**

`git fetch` gets all the data on the remote respository that you don't have yet and stores it in your local repository. It doesn't change what you're working on, you have to add the changes in manually with `git merge`.

To fetch from your remote repository `origin`:
```
$ git fetch origin
```

To fetch from all your remotes:
```
$ git fetch --all
```

**Pushing**

`git push` lets you share your changes with the rest of the team. 

For example, to share your `master` branch with your `origin` repository:
```
$ git push origin master
```
Note: to be allowed to push you must have pulled the most recent version of the project and incorporated any changes into your code.

---
## Practice

What does this command do?
```
$ git push enki master
```
???

* Shares `master` branch with `enki` repo.
* Shares `enki` branch with `master` repo.
* Gets `master` branch from `enki` repo.

---
## Revision

Get the data from the remote repository `enki`:
```
$ git ??? ???
```
* fetch
* enki
* origin
* grab
* push
* receive
 
