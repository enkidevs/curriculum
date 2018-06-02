---
author: catalin
levels:
  - advanced
  - medium
type: normal
category: feature
standards:
  javascript.use-open-source-javascript-packages.1: 10
  javascript.npm-publish.2: 10
  javascript.npm-tasks-and-modules-manager.0: 10
tags: []
links:
  - >-
    [nodejs.org](https://nodejs.org/en/blog/npm/managing-node-js-dependencies-with-shrinkwrap/){website}
parent: check-data-about-a-package
aspects:
  - workout
  - deep
  - new
---

# Lock down dependency versions by shrinkwrapping


---

## Content

`npm` has great support for semanting versioning because it uses wildcards and expressions for versions of dependencies listed in the `package.json` file:

```json
{  //other props
   "dependencies": {
      "module-a": "2.3.x",
      "module-b": "<=1.5.0"
  }
}
```

However, **unexpected failure** can occur when running `npm install` over time due to updated versions of your dependencies.

The command:

```bash
$ npm shrinkwrap
```

generates a snapshot of the current dependency tree and will lock down versions of dependencies.

This is done by automatically generating the `npm-shrinkwrap.json` file which will override dependency versioning of `package.json`.


---

## Practice

What command do you need to run as to generate a snapshot of the current dependency tree and lock down versions inside it?

    $ ??? ???

* npm
* shrinkwrap
* lock
* dependencies
* package.json
* npm-shrinkwrap


---

## Revision

What command do you need to run as to generate a snapshot of the current dependency tree and lock down versions inside it?

    $ ??? ???

* npm
* shrinkwrap
* lock
* dependencies
* package.json
* npm-shrinkwrap

