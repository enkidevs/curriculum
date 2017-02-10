# Hook Scripts
author: mihaiberq

levels:

  - beginner
  - basic
  - medium
  - advanced

type: normal

category: must-know

parent: npm-variables

---
## Content

Scripts are an essential feature of *npm*. They simplify the process of building and running your application. In the last insight, you saw how to write and invoke scripts using the command line.

There are, however, some predefined events called *lifecycles* or *hooks*, which don't need to be run by hand. Whenever you run `npm install` and one or more hooks has an action declared, *npm* will invoke those actions by itself. Some of the other event hooks are *preinstall*, *postinstall*, *pretest*, *start*, *test*, *stop* etc.

Hooks can be extremely useful both in a production or a development environment. One example is using *gulp* or another package to watch for changes made to JavaScript files and restart the local server.

You could run start watching the files from within a gulp file, either immediately after `npm install` has finished (using the *postinstall* event), or whenever is needed using a custom script:
```javascript
scripts: {
  "watch:js": "gulp",
  "postinstall": "watch:js"
}
```
Note that `npm start` runs `node server.js` by default, in case you have such a file.

---
## Practice

A default `npm` script event is:

???
* postinstall
* pre-commit
* gulp
* link

---
## Revision

What command does `npm start` run by default?
```
$ ???
```
* `node server.js`
* `gulp`
* `node -v`
* `npm install`
