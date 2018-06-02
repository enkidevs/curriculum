---
author: mihaiberq

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

parent: semantic-versioning

standards:
  javascript.npm-publish.3: 10

tags:
  - introduction
  - workout
  - deep

---

# Packages vs Modules

---

## Content

So far, we've used the terms _package_ and _module_ somehow interchangeably. However, there is a sensible difference between the two and it has to do with the way in which node works.

In short, a **package** is a file or directory that contains a _package.json_. It is something that, by reading its _package.json_ file, can be characterized by a _name_, a _version_, a _tag_, or a _git repository url_.

Even if a package is not published to the public registry (you will be shown how to do that in a future workout), it can provide the same benefits, such as avoiding code repetition.

A **module**, on the other hand, is anything that you can load in a project using `require()`. To some extent, packages can be modules, but this is not required.

There are some packages, such as command line interface ones, that contain an executable but don't provide the _main_ field which makes them importable by _Node.js_.

### _package.json_ and _node_modules_

The above definitions explain the nomenclature chosen for the two npm resources: _package.json_ and _node_modules_.

The _package.json_ file defines the package, while the _node_modules_ is the place where _Node.js_ will look for imports specified with `require()`.

You could have a module _node_modules/myModule.js_, for which:

```
var a = require('myModule.js');
```

Would be valid. However, _myModule_ isn't a _package_, as it is missing the attributes of a package specified inside the _package.json_ file.

Alternatively, if a _package_ doesn't have an _index.js_ or a _main_ field in the _package.json_, then it isn't a module. Even if you could find it inside the _node_modules_ directory, node won't be able to import it.

---

## Practice

For a module to be a package as well, it has to

???

- have a package.json file
- be published
- have an index.js file
- be required

---

## Revision

Node's `require()` looks for code in

???

- node_modules
- package.json
- node_packages
