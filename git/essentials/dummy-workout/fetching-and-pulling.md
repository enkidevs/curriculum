---
author: catalin

levels:
  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [git-scm.com](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes#Fetching-and-Pulling-from-Your-Remotes){website}

---
# Fetching and Pulling

---
## Content

To get data from a remote **Git** repository you can use the `git fetch` command:
```
$ git fetch [remote-name]
```

This updates the repository on your local machine to match the **history** in the remote [copy of the] repository.

The `git clone` command is the most common way to instantiate a copy of a remote repository.  The remote is automatically set as `origin`.

```
$ git fetch origin
$ git fetch # equivalent
# origin is the default remote
```
The command above will fetch all new work from the server since you either cloned it or you last fetched.

Keep in mind that `fetch` will only download the missing data in the repository, but not `merge` it in the working directory.

To automatically do this, you can use the `git pull` command. However, your current branch must be set up to track the remote branch.
```
$ git pull
```

To automatically download and merge missing work from say the `master` branch regardless on which branch you are, you can run:
```
$ git pull origin master
```

---
## Practice

To get data from a remote repository, and also merge it, you would use:
```
$ git ???
```

* pull
* fetch
* clone
* merge
* rebase
* push

---
## Revision

What command is used to **get** new data from a remote Git repository, but not merge it automatically?

```
$ git ???
```

* fetch
* pull
* merge
* commit
* add
* clone
 
