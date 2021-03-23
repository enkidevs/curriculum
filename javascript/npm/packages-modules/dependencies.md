---
author: mihaiberq
type: normal
category: must-know
tags:
  - introduction
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Declaring dependencies


---

## Content

There are two types of packages you can include in your project:

- **dependencies**: used in production
- **devDependencies**: used in development and testing

In a project that uses the latest minor *express 4* release in production and *jest 18.0.0* in development, *package.json* should have these attributes:

```plain-text
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
# dependencies
npm install express@^4.0.0 --save
# devDependencies
npm install jest --save-dev
```

Both will install the specified versions of *express* and *jest* and also add them to the *package.json* file.

You can list all the existing dependencies of your project with:

```bash
npm list
~/project
|__ express@4.14.0
|__ jest@18.0.0
```

This is the true power of *npm*. What would have required a lot of individual downloading and importing, is now solvable by adding a new line in the *package.json* file.


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

Install and add *gulp* to the list of dev dependencies from the command line:

```bash
??? ??? ??? ???
```

- npm
- install
- gulp
- --save-dev
- --save
- node
