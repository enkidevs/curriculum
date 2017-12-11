# `npm` scripts
author: catalin

levels:

  - basic

  - beginner

type: normal

category: must-know

links:

  - '[docs.npmjs.com](https://docs.npmjs.com/misc/scripts){website}'

  - >-
    [medium.com](https://medium.com/@mxstbr/npm-scripts-explained-f125e85eb378#.xkpyd4fei){website}

---
## Content

Inside the `package.json` file you can specify a `scripts` section which defines commands that can be run, or hook into the life cycle of your package.

Whenever you enter `$ npm run <command>` the script with the `<command>` name will be run.

Scripts can be useful to avoid having to globally install node packages. Let's say you're using **Mocha**, rather than doing
```bash
$ npm install -g mocha
```
You can be specify it as a `devDependency` in `package.json`:
```json
"devDependencies": {
  "mocha": ""
}
```
Now when you run `npm install` the **Mocha** module will be installed into your packages `node_modules`. Then a npm script can be created to leverage it:
```json
"scripts": {
  "test": "mocha *.test.js"
}

```
And when you run the script:
```bash
$ npm run test
```
The **PATH** will be appended with your local `node_modules` to leverage locally installed executables.
