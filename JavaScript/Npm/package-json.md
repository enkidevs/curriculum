# `package.json`
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

parent: setting-up-npm

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/getting-started/using-a-package.json){website}

---
## Content

The best way to manage locally installed packages is through the **package.json** file. Here are some key points of why you should use one:
 - it serves as documentation for the packages your project is using
 - it allows you to choose a specific package version that you might want to use in your project
 - running `npm install` in the same folder in which the *package.json* is located will download every dependency specified

The syntax to specify dependencies inside *package.json* is:
```javascript
"dependencies" : {
  "name": "package-name",
//version should be declared as x.x.x
    "version": "1.2.5"
  }
//or the shorthand notation
{
  "package-name": "1.2.5"
}
```
To create the *package.json* file, run:
```bash
$ npm init -y
```
Using the -y flag speeds up the process by omitting certain options including specifying various scripts, a description or a license.

The default generated file for a project called *example* would look like this:
```
{
  "name": "example",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test " +
        "specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```
This file is what makes some code a *package*.

---
## Practice

```bash
$ ??? ??? ???
```
Will create the default *package.json* file.

* `npm`
* `init`
* `-y`
* `install`
* `-i`

---
## Revision

The *package.json* file serves as

???

* all of the above
* a list of dependencies
* a list of scripts to be run
* a short description of your project
