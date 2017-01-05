# `package.json`
author: mihaiberq

levels:
  - beginner

type: normal

inAlgoPool: false

category: must-know

links:

  - >-
    [docs.npmjs.com](https://docs.npmjs.com/getting-started/using-a-package.json){website}

---
## Content

The best way to manage locally installed packages is through the **package.json** file. Here are some key points of why you should use one:
 - it serves as a documentation for the packages your project is using
 - it allows you to choose a specific package version that you might want to use in your project
 - running `npm install` in the same folder in which the *package.json* is located will install every dependency specified

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
The `-y` flag will speed the process up for you in case you don't want to be bothered with things like specifying scripts, description or licensing.

The default generated file for a project called *example* would look like this:
```
{
  "name": "example",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test 
        specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}
```
There are two types of packages you can include in your project:
 - **dependencies**: used in production
 - **devDependencies**: used in development and testing

In a project that uses the latest minor *express 3* release in production and *express 4.14.0* in development, *package.json* should have these attributes:
```
{
  "name": "example",
  "version": "1.0.0",
  "dependencies": {
    "express": "^3.0.0",
  },
  "devDependencies": {
    "express": "4.14.0"
  }
}
```
Notice the `^` before `3.0.0` that specifies the latest minor release, or the equivalent of `3.x`.

Another way to specify each dependency is using the command line:
```bash
#dependencies
$ npm install express@^3.0.0 --save
#devDependencies
$ npm install express --save-dev
```
Both will install the specified version of *express* and add them to the *package.json* file.

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

The `npm install` ??? flag adds a new dependency to *package.json*.

* --save
* --save-dev
* -g
* -l
