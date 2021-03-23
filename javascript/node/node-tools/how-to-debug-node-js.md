---
author: rosielowther
type: normal
category: feature
tags:
  - introduction
  - workout
  - deep
links:
  - >-
    [stackoverflow.com](http://stackoverflow.com/questions/1911015/how-do-i-debug-node-js-applications/31502652#31502652){website}
  - '[github.com](https://github.com/s-a/iron-node){website}'
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

# How to debug Node.js


---

## Content

ß
There are many options when debugging Node applications.

### Built-in debugger

Debug by putting a `debugger` statement in your code.
Run by:

```bash
node debug app.js
```

### Browser interface

More sophisticated debugging can be done using **Node Inspector**, which allows debugging via an interface inside of a browser.
Run by:

```bash
npm install -g node-inspector
node-debug app.js
```

### REPL

**Iron Node** also has sophisticated debugging for Linux, Windows and OS X.

```bash
npm install iron-node -g;
iron-node app.js
```


---

## Practice

Which of the following cannot be used to debug a node application?

???

- webpack
- node debug
- node-inspector
- iron-node


---

## Revision

Start node with its built-in debugger:

```bash
??? ??? app.js
```

- node
- debug
- debugger
- node-debug
- iron-node
