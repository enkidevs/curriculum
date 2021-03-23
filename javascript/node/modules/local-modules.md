---
author: tommarshall
type: normal
category: must-know
tags:
  - introduction
  - workout
links:
  - >-
    [Local
    Modules](http://www.tutorialsteacher.com/nodejs/nodejs-local-modules){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Local Modules


---

## Content

In Node.js a local module is a module created locally to your application. A local module can include different functionalities of the application across different files and folders.

Local modules must be **in their own separate JavaScript file**.

Consider the following example of a local module, found in the `news.js` file:

```javascript
// news.js

const news = {
  good: (good) => {
    console.log('Good news! ' + good);
  },
  bad: (bad) => {
    console.log('Bad news... ' + bad);
  }
};

module.exports = news
```

A local module has to be required into an application in the same way a core module does. The only difference is that the path to the module must be specified in `main.js`:

```javascript
// main.js

const newsModule = require(`./news.js`);
```

> 💡 In this case both `news.js` and `main.js` are found in the same folder. If your modules are in separate folders, you should specify the path to file (e.g. `/path-to-file/news.js`).

The local module object can now be called with one of its functions:

```javascript
// main.js
const newsModule = require(`./news.js`);

newsModule.good("We're working on Node!");
```

To run the module:

```bash
node main.js
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

Running `node main.js` into the console should log `"Hello from Enki"`.

```javascript
// main.js

const myModule = ???('./myModule.js')

???.???
```

- require
- myModule
- hello()
- hello
- req
- import
- myFile
- myLocalModule


---

## Revision

Which of the following module types must have its path specified when requiring it?

???

- local
- core
