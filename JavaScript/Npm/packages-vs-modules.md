# Packages vs Modules
author: mihaiberq

levels:
  - beginner

type: normal

inAlgoPool: false

category: must-know

---
## Content

So far, we've used the terms *package* and *module* somehow interchangeably. However, there is a sensible difference between the two and it has to do with the way in which node works.

In short, a **package** is a file or directory that contains a *package.json*. It is something that, by reading its *package.json* file, can be characterized by a *name*, a *version*, a *tag*, or a *git repository url*.

Even though the package is not published to the public registry (you will see how to do that in a future workout), it provides the same benefits, such as avoiding code repetition.

A **module**, on the other hand, is anything that you can load in a project using `require()`. To some extent, packages can be modules, but there is no requirement of the kind.

There are some packages, e.g. command line interface ones, that contain an executable, but don't provide the *main* field which makes them importable by *Node.js*.

### *package.json* and *node_modules*
The above definitions explain the nomenclature chosen for the two npm resources: *package.json* and *node_modules*.

The *package.json* defines the package, while the *node_modules* is the place where *Node.js* will look for imports specified with `require()`.

You could have a module *node_modules/myModule.js*, for which:
```
var a = require('myModule.js');
```
Would be valid. However, *myModule* isn't a *package*, as it is missing the attributes of a package specified inside the *package.json* file.

Alternatively, if a *package* doesn't have an *index.js* or a *main* field in the *package.json*, then it isn't a module. Even if you could find it inside the *node_modules* directory, node won't be able to import it.

---
## Practice

For a module to be a package as well, it has to

???

* have a package.json file
* be published
* have an index.js file
* be required
---
## Revision

Node's `require()` looks for code in

???

* node_modules
* package.json
* node_packages
