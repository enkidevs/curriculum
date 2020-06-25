---
author: catalin

levels:

  - beginner

type: normal

category: how to

aspects:

  - obscura


links:

  - '[Understanding The Github Flow](https://guides.github.com/introduction/flow/){website}'

parent: git-hub

---

# General **GitHub** workflow

---
## Content

**GitHub** enhanced **Git**'s collaboration capability with the `pull request`, providing a *GUI* way to generate a 'patch'.

This set a standard for **contributing** to software projects revolving around the pull request. 

However, public **collaboration** is not the single use case for this workflow. Many private teams employ it to simplify their code review process.

 To add a feature or an improvement to an existing codebase:

- clone the repository
- check out the `HEAD` of the development branch - usually `master` or `develop`.
- make your changes and  `commit` them
- `push` the branch to **GitHub**
- generate a **pull request** with the development target branch[1]
- work with the team to review the pull request (if changes are needed, more `commit`s can be made)
- when the project owner is ready to accept your proposed changes it can be merged
- this closes the pull request 

---
## Revision

Is the concept of **pull requests** only used in *GitHub*?

???


* `no`
* `yes`

---
## Footnotes
[1:pull request] This occurs automatically when you are **not** a listed 'contributor' on the repository
 
