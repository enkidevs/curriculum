# Available Binaries For Scripting
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

parent: npm-scripting

---
## Content

Scripting is great for compiling and processing. However, not all the modules you have installed can be used for scripting: binaries are required for the packages to be invoked from the command line.

Linters, precompilers and testing frameworks are examples of packages that should provide such a binary file. All of the available commands are commonly located inside the *node_modules/.bin/* directory.

You can check the exact location by running:
```bash
$ npm bin
/home/user/project/node_modules/.bin
```
Add an extra `-g` flag (`--global`) to check where global packages are installed:
```bash
$ npm bin
/usr/local/bin
```
There isn't a predefined command for listing the available binaries, but you can manually do it using *ls*:
```bash
$ ls node_modules/.bin/
babel   mocha    phantomjs
coffee  nodemon  semver
```

---
## Practice

You can find out the exact location of available binaries with:
```bash
$ ??? ???
```

* `npm`
* `bin`
* `ls`
* `/project/node_modules/.bin`
* `/usr/local/bin`
---
## Revision

A package binary file is needed for

???

* command line invocation of the module
* importing the module
* publishing the module
* explaining the functionalities of the module
