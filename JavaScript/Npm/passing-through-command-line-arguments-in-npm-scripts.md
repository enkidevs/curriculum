# Passing through command line arguments in npm scripts
author: catalin

levels:

  - basic

  - beginner

type: normal

category: feature

links:

  - >-
    [www.marcusoft.net](http://www.marcusoft.net/2015/08/npm-scripting-configs-and-arguments.html#passing-through-command-line-argument){website}

parent: check-data-about-a-package

---
## Content

`npm` package manager provides a feature that lets users pass in command line arguments using the `-- ` characters. Note that there is a blank space after the two dashes.

For example, if we have the following scripts:
```json
"scripts" {
  // other scripts
  "start:test" : "npm start -- 4000",
  "start:stage" : "npm start -- 5000"
}
```  

When running either `start:test`  or `start:stage` scripts, the first command line argument provided will be `4000` or `5000` depending on our choice.

To access these arguments the `process.argv` array can be used. In our case `process.argv[2]` represents the first argument provided as `[0 ]` is `node` and `[1 ]` is the path to the `.js` file.

Alternatively you can provide `--` when calling a script directly:
```bash
$ npm run someCommand -- --arg=value
```
