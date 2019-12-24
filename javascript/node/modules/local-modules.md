---
author: tommarshall

levels:
  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know


standards:
  javascript.use-modules.0: 10
  javascript.use-modules.1: 10

tags:
  - introduction
  - workout

links:
  - '[Local Modules](http://www.tutorialsteacher.com/nodejs/nodejs-local-modules){website}'

parent: the-http-module-for-servers

aspects:
  - introduction
  - workout


---
# Local Modules

---
## Content

In Node.js a local module is a module created locally to your application. A local module can include different functionalities of the application across different files and folders.

Local modules must be in their own separate JavaScript file.
Consider the following example of a local module (filename `news.js`):

```javascript
const news = {
  good: (good) => {
    console.log('Good news! ' + good);
  },
  bad: (bad) => {
    console.log('Bad news... ' + bad);
  }
};
module.export = news
```

A local module has to be required into an application in the same way a core module does, the only difference being that the path to the module must be specified as follows in `main.js`:

```javascript
const newsModule = require(`./news.js`);
```

The local module object can now be called with one of its functions:
```javascript
newsModule.good("We're working on Node!");
```
To run the module:
```bash
$ node main.js
# Good news! We're working on Node!
```

---
## Practice

Consider the following local node module:

```javascript
// myModule.js
module.exports = {
  hello: () => {
    console.log('Hello from Enki');
  }
}
```

How would you import and use it in your application?

```javascript
// main.js
const myModule = ???('./myModule.js')

???.???
```

Running `$ node main.js` should log `"Hello from Enki"`.

* require
* myModule
* hello()
* hello
* req
* import
* myFile
* myLocalModule

---
## Revision

Which of the following module types must have its path specified when requiring it?

???

* local
* core
 
