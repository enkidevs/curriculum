---
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

standards:
  javascript.npm-tasks-and-modules-manager.0: 10

tags:
  - introduction

links:
  - '[docs.npmjs.com](https://docs.npmjs.com/getting-started/using-a-package.json){website}'

parent: setting-up-npm
---

# `package.json`

---

## Content

The best way to manage locally installed packages is through the **package.json** file. Here are some key points of why you should use one:

- it serves as documentation for the packages your project is using
- it allows you to choose a specific package version that you might want to use in your project
- running `npm install` in the same folder in which the _package.json_ is located will download every dependency specified

The syntax to specify dependencies inside _package.json_ is:

```javascript
"dependencies" : {
  "name": "package-name",
    // version should be declared as x.x.x
    "version": "1.2.5"
  }
  //or the shorthand notation
  {
    "package-name": "1.2.5"
  }
```

To create the _package.json_ file, run:

```bash
$ npm init -y
```

Using the -y flag speeds up the process by omitting certain options including specifying various scripts, a description or a license.

The default generated file for a project called _example_ would look like this:

```json
{
  "name": "example",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test":
      "echo \"Error: no test " +
      "specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```

This file is what makes some code a _package_.

---

## Practice

```bash
$ ??? ??? ???
```

Will create the default _package.json_ file.

- npm
- init
- -y
- install
- -i

---

## Revision

The _package.json_ file serves as

???

- all of the above
- a list of dependencies
- a list of scripts to be run
- a short description of your project
