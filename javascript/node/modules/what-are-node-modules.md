# What are Node Modules?
author: tommarshall

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

parent: npm-nodes-package-manager

standards:
  js.use-modules: 10
  js.node-developer-environment: 10

tags:
  - introduction
  - workout

links:
- '[Node Modules](http://book.mixu.net/node/ch8.html)'

---
## Content

A module encapsulates an amount of code into one single code unit. Node has a module system implemented which allows for other JavaScript files to be included and used in your application. A substantial amount of Node’s core functionality was implemented using JavaScript modules.

Node incorporates 3 different module types, modules can either be core modules, local modules or third party modules. An example of a core Node module is the `http` module. Local modules are Node.js files in your project that have an `exports` object declared. Third party modules usually have a `package.json` and are installed from a remote host into your `node_modules/` folder.

Using modules when building Node applications give a number of advantages:

- easy and straightforward inclusion of external libraries
- increased modularity
- reduced amount of code per file
- easier to read and maintain code

---
## Revision
Where are third party Node.js modules installed to?
???

* `node_modules`
* `local_modules`
* `libraries`
* `libs`