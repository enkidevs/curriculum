---
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

standards:
  javascript.npm-tasks-and-modules-manager.0: 20

tags:
  - introduction

links:
  - '[andrewhfarmer.com](http://andrewhfarmer.com/javascript-frontend-package-managers/){website}'

parent: what-is-npm

aspects:
  - introduction


---
# Why should I use npm?

---
## Content

There are several options when it comes to JavaScript package managers.

The first one, **npm**, started off as the package manager for *node*. However, it transitioned to hosting both front-end and back-end packages, meaning there's no need for multiple package managers.

**Bower** used to solve the problem *npm* had: missing browser/front-end support. Nowadays, this is not the case.

Another option is **duo**. It uses `require()` statements inside the JavaScript files to look and download packages. The disadvantage of using *duo* is requiring the same package in multiple places: you would have to look for and update multiple statements to change the package version.

The latest package manager released is **Yarn**. One of the main differences between Yarn and npm is that the former installs dependencies deterministically (the *node_modules* directory will have the same structure across all machines), which makes the installation process faster.

Of these options npm is usually seen as the current best-choice.

---
## Practice

Which of the following is not a JavaScript package manager?

???

* webpack
* npm
* yarn
* duo
* bower

---
## Revision

A faster alternative package manager to npm is

???.

* yarn
* browserify
* react
* node
 
