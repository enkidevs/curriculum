# Why should I use npm?
author: mihaiberq

levels:
  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

 - >-
  [andrewhfarmer.com](http://andrewhfarmer.com/javascript-frontend-package-managers/){website}

---
## Content

There are several options when it comes to JavaScript package managers.

The first one, **npm**, started off as the package manager for *node*. However, it transitioned to hosting both front-end and back-end packages, meaning there's no need for multiple package managers.

**Bower** used to solve the problem *npm* had: missing browser/front-end support. Nowadays, this is not the case.

Another option is **duo**. It uses `require()` statements inside the JavaScript files to look and download packages. The disadvantage of using *duo* is requiring the same package in multiple places: you would have to look for and update multiple statements to change the package version.

The latest package manager released is **Yarn**. One of the main differences between Yarn and npm is that the former installs dependencies deterministically (the *node_modules* directory will have the same structure across all machines), which makes the installation process faster.

Out of these three, **npm** sticks out as being the *"package manager for JavaScript"*. Right now, there is no reason not to use npm.

---
## Revision

An alternative package manager to npm is

???.

* Yarn
* browserify
* react
* node
