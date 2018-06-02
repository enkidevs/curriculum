---
author: tommarshall
levels:
  - beginner
  - basic
  - medium
  - advanced
type: normal
category: must-know
standards:
  javascript.use-modules.0: 10
  javascript.node-developer-environment.2: 10
tags: []
links:
  - '[Node Modules](http://book.mixu.net/node/ch8.html){website}'
parent: npm-nodes-package-manager
aspects:
  - introduction
  - workout
---

# What are Node Modules?


---

## Content

A module encapsulates an amount of code into one single code unit. Node has a module system implemented which allows for other JavaScript files to be included and used in your application. A substantial amount of Node’s core functionality was implemented using JavaScript modules.

Node incorporates 3 different module types, modules can either be core modules, local modules or third party modules. An example of a core Node module is the `http` module. Local modules are Node.js files in your project that have an `exports` object declared. Third party modules usually have a `package.json` and are installed from a remote host into your `node_modules/` folder.

Using modules when building Node applications give a number of advantages:

* easy and straightforward inclusion of external libraries
* increased modularity
* reduced amount of code per file
* easier to read and maintain code


---

## Practice

Which of the following statements about node modules do you consider false?

???

* using modules will increase the performance of you application
* using modules can reduce the amount of code per file
* using modules can make your code easier to maintain and code


---

## Revision

Where are third party Node.js modules installed to?
???

* node_modules
* local_modules
* libraries
* libs

