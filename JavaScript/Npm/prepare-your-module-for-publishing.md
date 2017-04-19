# Preparing Your Module For Publishing
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: how to

parent: creating-a-node-module

---
## Content

If you decide to publish your module, a good *README.md* file is necessary. It does not only help you keep track of the capabilities of the module, but also it helps others understand how to use your module.

There are many ways to write the README file but it's worth considering the following sections:
```md
## Introduction
 The introduction should consist of one or
 two paragraphs summarizing the
 purpose of the project.

## Installation
 This should contain dependencies that are
 required for the module to work and how
 to set up the module.

## Usage
 You should specify the main methods of
 the module here and maybe add some example
 outputs for sanity checking.

## Tests
 If you have included tests,
 provide the code that runs them.
```
When you consider your module ready, run the following to publish it:
```bash
$ npm publish
```
Scoped packages are private by default, but you have to pay a subscription to keep them private. It is free, however, to publish *public packages*. In case your module is scoped and you want it to be public, run:
```
$ npm publish --access=public
```
You should now be able to find your package in the npm registry.

---
## Revision

Scoped packages are ??? by default.

* private
* public
