---
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

parent: private-packages

standards:
  javascript.use-open-source-javascript-packages.5: 10
  javascript.npm-tasks-and-modules-manager.0: 10

tags:
  - introduction
  - workout
  - deep
---

# Declaring dependencies

---

## Content

There are two types of packages you can include in your project:

- **dependencies**: used in production
- **devDependencies**: used in development and testing

In a project that uses the latest minor _express 4_ release in production and _jest 18.0.0_ in development, _package.json_ should have these attributes:

```
{
  "name": "example",
  "version": "1.0.0",
  "dependencies": {
    "express": "^4.0.0",
  },
  "devDependencies": {
    "jest": "18.0.0",
  }
}
```

Another way to specify each dependency is using the command line:

```bash
#dependencies
$ npm install express@^4.0.0 --save
#devDependencies
$ npm install jest --save-dev
```

Both will install the specified versions of _express_ and _jest_ and also add them to the _package.json_ file.

You can list all the existing dependencies of your project with:

```
$ npm list
~/project
|__ express@4.14.0
|__ jest@18.0.0
```

This is the true power of _npm_. What would have required a lot of individual downloading and importing, is now solvable by adding a new line in the _package.json_ file.

---

## Practice

Packages that the application is dependent on are specified in

???

- package.json file
- node_modules directory
- dependencies.json file
- devDependencies.json file

---

## Revision

Install and add _gulp_ to the list of dev dependencies from the command line:

```
$ ??? ??? ??? ???
```

- npm
- install
- gulp
- --save-dev
- --save
- node
