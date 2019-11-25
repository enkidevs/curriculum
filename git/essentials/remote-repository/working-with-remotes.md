---
author: catalin

levels:

  - beginner

type: normal

category: must-know

aspects:

  - introduction
  - workout
  
inAlgoPool: false


links:

  - '[Remote Branches Official Documentation](https://git-scm.com/book/en/v2/Git-Branching-Remote-Branches){website}'
  - '[Working With Remotes Official Documentation](https://git-scm.com/book/en/v2/Git-Basics-Working-with-Remotes){website}'


---

# Working with remotes

---
## Content

Remote repositories are fundamental to the **Git** workflow for teams who need to collaborate.

You can see the remote repositories with your project by calling `git remote`:
```
$ git remote
# origin
```
Keep in mind that `origin` is the default name **Git** gives to the server you cloned from.

Using the `-v` flag, you can also see the `URL`s associated with the remotes[1]:
```
$ git remote -v
# origin https://github.com/user/rep (fetch)
# origin https://github.com/user/rep (push)
```

You can add new remotes with the `git remote add` command:
```
# git remote add <shortname> <url>
$ git remote add xy \
    https://github.com/us/repo
$ git remote -v
# origin https://github.com/user/rep (fetch)
# origin https://github.com/user/rep (push)
# xy     https://github.com/us/repo (fetch)
# xy     https://github.com/us/repo (push)

```

---
## Practice

What's the default name **Git** provides to the server you `clone` from?

???

* origin
* master
* remote
* GitHub

---
## Revision

What command is used to see the remote repositories for your project?

```
$ git ???
```

* `remote`
* `remotes`
* `add`
* `status`
* `checkout`

---
## Footnotes
[1:remotes]
Using the `-v` flag will show the `URL`s used when both reading (merge or fetch) and writing (push) to that remote:

- `fetch`: reading
- `push`: writing
 
