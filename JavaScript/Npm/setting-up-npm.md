# Setting up npm
author: mihaiberq

levels:
  - beginner

type: normal

category: must-know

parent: why-use-npm


---
## Content

Now that you have chosen to use **npm**, the next step is to install it: *npm* is included with *Node.js*.

As npm gets updated more often than node, you can update it to its most recent version like follows:
```bash
$ npm install npm@latest -g
```

This syntax will be used when installing individual packages:
```bash
$ npm install package-name@version (-g)
# or
$ npm i package-name@version (-g)
```

When you install a package globally, by appending the `-g` flag to the command , every project that relies on it would use the same *version* of the package, which may cause problems with dependencies.

The safest way to install packages is in the project folder, or locally. For example, to check whether the installation was successful, look for the *express* folder inside the *node_modules* directory:
```bash
$ npm install express
```
If the version of the package is not specified, npm will install its latest version by default. Once the package is inside the *node_modules* directory, you can require it in your project:
```javascript
var express = require('express');
var app = express();
```
---
## Revision

Install the *react* package locally:
```bash
$ ??? ??? ??? ???
```
* `npm`
* `install`
* `react`
* `-l`
* `-g`
* `node`
