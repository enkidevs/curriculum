---
author: rosielowther

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

aspects:

  - workout
  - deep


links:

  - '[Git Clean](https://git-scm.com/docs/git-clean){documentation}'


---

# Delete all untracked files

---
## Content

Use `git clean` to remove untracked files from your local repository.

To delete untracked files in the current directory:
```
$ git clean -f
```

To remove untracked directories:
```
$ git clean -f -d
```

You also can clean the working directory interactively by using the `-i` flag:
```
$ git clean -f -i
```

You can use `-n` to have a dry-run of the operation and display the results without actually deleting anything.

---
## Practice

Remove the untracked files in your current directory :
```
$ git ??? ???
```

* `clean`
* `-f`
* `-m`
* `rm`
* `delete`

---
## Revision

Remove the untracked directories in your local repository :
```
$ git ??? -f ???
```

* `clean`
* `-d`
* `-m`
* `rm`
* `delete`

 
