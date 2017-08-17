# Manage local node modules with `npm link`
author: catalin

levels:

  - basic

  - advanced

  - medium

type: normal

category: feature

parent: check-data-about-a-package

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/cli/link){website}'

---
## Content

A modular Node.js application often implies the usage of certain local modules.

To support subsequent modification of those modules and to not need to go through re-installations or code changes one can use the `npm` commmand `npm link`. This will create a *symbolic link* between packages.

The whole linking process consists of two steps, the first being declaring a module as a global link. This is done by running :
```bash
$ npm link
// must be run in the root module folder
```
Secondly, to install the linked modules in the target app using the following command:
```bash
$ npm link myImportedModule
```

This method fails when you have a local module depending on another local module:
```
modules/moduleOne
modules/moduleTwo -> depends on moduleOne
app/
```

To solve this steps must be taken:
```bash
$ cd modules/moduleOne
$ npm link
$ cd modules/moduleTwo
$ npm link moduleOne
$ npm link
$ cd app/
$ npm link moduleTwo
```
