# Scripts lifecycle
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

---
## Content

Scripts are an essential feature of *npm*. They simplify the process of building and running your application. In the last insight, you've seen how to write and invoke scripts using the command line.

There are, however, some predefined events, called *lifecycles*, which don't require being run by hand. Whenever you run `npm install` and one of such event has an action declared, *npm* will invoke those actions by itself. Some of the other events are *preinstall*, *postinstall*, *pretest*,*start*, *test*, *stop* etc.

You can do some really cool stuff with them, both for production and for development. One example is using *gulp* or other package to watch the changes done to JavaScript files and restart the local server.

You could run start watching the files from within a gulp file, either straight after `npm install` has finished (using the *postinstall* event), or whenever is needed using a custom script:
```javascript
scripts: {
  "watch:js": "gulp",
  "postinstall": "watch:js"
}
```
N.B. `npm start` runs `node server.js` by default, in case you have such a file.

---
## Practice

A `npm` default script running event is:

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
