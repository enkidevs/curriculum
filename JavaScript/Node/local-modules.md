# Local Modules
author: tommarshall

levels:

  - beginner

  - basic

type: normal

category: must know

parent: the-http-module-for-servers

links:
- '[Local Modules](http://www.tutorialsteacher.com/nodejs/nodejs-local-modules)'

---
## Content

In Node.js a local module is a module created locally to your application. A local module can include different functionalities of the application across different files and folders.

Local modules must be in their own separate JavaScript file, an example local module, `news.js`:

```
var news = {
  good: function(good) {
    console.log('Good news! ' + good);
  },
  bad: function(bad) {
    console.log('Bad news... ' + bad);
  }
};
module.export = news
```

A local module has to be required into an application in the same way a core module does, the only difference is that the path to the module must be specified like follows in `main.js`:

```
var newsModule = require(`./news.js`);
```
Calling the local module object with one of its functions:
```
newsModule.good('We're working on Node!');
```
To run the module:
```
$ node main.js
```
Which gives the following output:
```
Good news! We're working on Node!
```

---

---
## Revision

Which of the following module types must have its path specified when requiring it?
???

* local
* core
